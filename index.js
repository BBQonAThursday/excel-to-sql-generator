const axios = require('axios');
const cheerio = require('cheerio');
const express = require('express');
const readXlsxFile = require('read-excel-file/node');
const PORT = 8000;

const app = express();
const fs = require('fs');
const filesDir = './files/';
const outputDir = './sql/';
const swatches = 'dbo.swatches';
const swatchesToCategories = 'dbo.swatchesToCategories';
const swatchesToColorRanges = 'dbo.swatchesToColorRanges';
const sheets = [swatches, swatchesToCategories, swatchesToColorRanges];
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
// verify that these match your spreadsheet.


const removeExtension = (filename) => {
  return filename.substring(0, filename.lastIndexOf('.')) || filename;
}

// get all file names from directory
const getInputFiles = async dir => {

  let fileStreams = [];
  let filesArr = [];
    fs.readdir(dir, (err, files) => {
      if (err) {
        throw err;
      }
      files.forEach(file => {
        const filePath = `${dir}${file}`;
        const sql = fs.createWriteStream(`${outputDir}${removeExtension(file)}.sql`);
        buildSqlInserts(filePath, sql);
      });
    // console.log(filesArr);
  });
  return filesArr; 
};

getInputFiles(filesDir);

// const writeStream = fs.createWriteStream('swatches-to-import.sql');
// Update File Name to match
// const inputFileName = 'Graber Naturals SQL generator template 08-2022.xlsx';


const buildSqlInserts = async (file, sql) => {
  let ind = 0;
    for(sheet of sheets) {
      console.log(sheet, file);
      // Read Each Sheet, which is a table record insert statement.
      await readXlsxFile(file, {sheet: sheet}).then((rows) => {
        // logic to insert the template comments in between the Insert comments
        if(ind < templateComments.length) { 
          sql.write(templateComments[ind]);
          ind++;
        }
  
        // For reach row, turn into a string, replace the brackets and check for the last item in the object
        rows.forEach(row => {
        // console.log(typeof row);
        
        const cleanedRow = JSON.stringify(row).replace("[\"", "").replace("\"]", "\n");
        // console.log(cleanedRow);
        // if this is the last row in the insert statement, remove the comma at the end.
        if(row === rows[Object.keys(rows)[Object.keys(rows).length - 1]]) {
          sql.write(cleanedRow.trim().replace(/[,]+$/, "\n"));
        } 
        else {
          // write the cleaned Row to the file
          sql.write(cleanedRow);
        }
      });
      // Add 'GO' to the end of the INSERT statement. 
      sql.write(`GO\n`);
    })
    console.log(`${sql.path} ${sheet} finished`);
  }
  
// require('child_process').exec('start "" "c:\\Users\\GambJJ\\Documents\\sql-generator\\sql"');

};

// TODO
// search the file directory for all .xlsx files, and output a file for each.
// create a spreadsheet template for each brand
// Write a program that generates the base excel template based on input parameters.
  // potentially takes all swatch fields as toggleable inputs to build the templates. also allows you to establish the swatch category mapping i.e. room darkening = 2178
// create a way to log versions of files for reference.
// hook up to a browser where you can upload the completed swatching spreadsheet and it will run this code and provide the .sql file as a download.
// write documentation for the spreadsheet and how to fill it out.



app.listen(PORT, () => console.log( `server running on PORT ${PORT}`));