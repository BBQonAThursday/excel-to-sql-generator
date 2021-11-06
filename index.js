const axios = require('axios');
const cheerio = require('cheerio');
const express = require('express');
const PORT = 8000;

const app = express();
const url = 'https://www.baliblinds.com/motorization';
const sitemapURL = 'https://www.graberblinds.com/sitemap.xml';
const fs = require('fs');
const writeStream = fs.createWriteStream('containers.csv');
const classes = ['.container', '.container-fluid', '.wrapper-container', '.container-table'];
const siteUrls = [];
// Write Headers
writeStream.write(`Container,FirstChildEl,Url \n`);

// This pulls all of the URLs from the sitemap.xml
axios(sitemapURL).then(response => {
  const html = response.data;
  const $ = cheerio.load(html);
  $('loc', html).each(function() {
    const url = $(this).text();
    siteUrls.push(url);
  })
}).catch(err => console.log(err));

// axios(url).then(response => {
//   const html = response.data;
//   const $ = cheerio.load(html);
//   const containerSearches = ['.container', '.container-fluid'];
//   const containers = [];
//   classes.forEach(item => {
//     $(item, html).each(function() {
//       const element = $(this).attr('class');
//       const firstChild = $(this).children().attr('class');
//       // const url = $(this).find('a').attr('href');
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
//   // Write Row to CSV
// }).catch(err => console.log(err));

app.listen(PORT, () => console.log( `server running on PORT ${PORT}`));