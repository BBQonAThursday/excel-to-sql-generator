const axios = require('axios');
const cheerio = require('cheerio');
const express = require('express');
const readXlsxFile = require('read-excel-file/node');
const PORT = 8000;

const app = express();
const url = 'https://www.baliblinds.com/motorization';
const sitemapURL = 'https://www.graberblinds.com/sitemap.xml';
const fs = require('fs');
// const writeStream = fs.createWriteStream('containers.csv');
const writeStream = fs.createWriteStream('containers.sql');
const classes = ['.container', '.container-fluid', '.wrapper-container', '.container-table'];
const siteUrls = [];
// Template Comment Strings
const step1 = `
-- Swatch Upload Template 
-- This template outlines all 3 insert statements that need to be completed to add new swatches into the database. \n
USE BrandSites;
GO \n
\n
-- 1. Add new swatch records to swatch table(dbo.Swatches) \n`;
const step2 = `\n-- 2. Assign a color range to each swatch created above. See table-references/color-ranges.csv for values.(dbo.SwatchesToColorRanges) \n`
const step3 = `\n-- 3.  Attach swatches to their swatch Categories (dbo.SwatchesToCategories)\n`;

const templateComments = [step1, step2, step3];

const swatches = 'dbo.swatches';
const swatchesToCategories = 'dbo.SwatchesToCategories';
const swatchesToColorRanges = 'dbo.SwatchesToColorRanges';

const sheets = [swatches, swatchesToCategories, swatchesToColorRanges];

const buildSqlInserts = () => {
  let ind = 0;
  sheets.forEach(sheet => {
    // Read Each Sheet, which is an table record insert statement.
    readXlsxFile('swatch-upload-sql-generator-v2.xlsx', {sheet: sheet}).then((rows) => {
      // logic to insert the template comments in between the Insert comments
      if(ind < templateComments.length) { 
        writeStream.write(templateComments[ind]);
        ind++;
      }

      // For reach row, turn into a string, replace the brackets and check for the last item in the object
      rows.forEach(row => {
      // console.log(typeof row);
      
      const cleanedRow = JSON.stringify(row).replace("[\"", "").replace("\"]", "\n");
      // console.log(cleanedRow);
      // if this is the last row in the insert statement, remove the comma at the end.
      if(row === rows[Object.keys(rows)[Object.keys(rows).length - 1]]) {
        writeStream.write(cleanedRow.trim().replace(/[,]+$/, "\n"));
      } 
      else {
        // write the cleaned Row to the file
        writeStream.write(cleanedRow);
      }
    });
    // Add 'GO' to the end of the INSERT statement. 
    writeStream.write(`GO\n`);
  })
});
}

buildSqlInserts();


// TODO
// search the file directory for all .xlsx files, and output a file for each.
// create a spreadhsheet template for each brand
// Write a program that generates the base excel template based on input parameters.
  // potentially takes all swatch fields as toggleable inputs to build the templates. also allows you to establish the swatch category mapping i.e. room darkening = 2178
// create a way to log versions of files for reference.
// hook up to a browser where you can upload the completed swatching spreadsheet and it will run this code and provide the .sql file as a download.
// write documentation for the spreadsheet and how to fill it out.




// This pulls all of the URLs from the sitemap.xml
// axios(sitemapURL).then(response => {
//   const html = response.data;
//   const $ = cheerio.load(html);
//   $('loc', html).each(function() {
//     const url = $(this).text();
//     siteUrls.push(url);
//   })
//   return siteUrls;
// }).then(response => {
//   // console.log(response);
//   axiosUrls = [];
//   siteUrls.forEach(item => {
//     request = axios(item);
//     axiosUrls.push(request);
//   })
//   const foundClasses = [];
//   axios.all(axiosUrls).then(axios.spread((args, index) => {
//     console.log(typeof(args), index);
//     const html = res.data;
    
//     const $ = cheerio.load(args);
//     classes.forEach(item => {
//       $(item, html).each(function() {
//         const element = $(this).attr('class');
//         const firstChild = $(this).children().attr('class');
//         const url = $(this).find('a').attr('href');
//         foundClasses.push({
//           element,
//           firstChild,
//           url
//         });
//         writeStream.write(`${element}, ${firstChild}, ${url} \n`);
//       });
//     });
//   })).catch(err => console.log(err));
// }).catch(err => console.log(err));

// axios(url).then(response => {
//   const html = response.data;
//   const $ = cheerio.load(html);
//   const containerSearches = ['.container', '.container-fluid'];
//   const containers = [];
//   classes.forEach(item => {
//     $(item, html).each(function() {
//       const element = $(this).attr('class');
//       const firstChild = $(this).children().attr('class');
//       const url = $(this).find('a').attr('href');
//       containers.push({
//         element,
//         firstChild,
//         url
//       });
//       writeStream.write(`${element}, ${firstChild}, ${url} \n`);
//     });
//   });
//   console.log(containers);
//   console.log('Scraping Done....')
// Write Row to CSV
// }).catch(err => console.log(err));

app.listen(PORT, () => console.log( `server running on PORT ${PORT}`));