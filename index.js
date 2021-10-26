const axios = require('axios');
const cheerio = require('cheerio');
const express = require('express');
const PORT = 8000;

const app = express();
const url = 'https://www.baliblinds.com/motorization'

axios(url).then(response => {
  const html = response.data;
  const $ = cheerio.load(html);
  const containerSearches = ['.container', '.container-fluid'];
  const containers = [];
  $('.container', html).each(function() {
    const container = $(this).attr('class');
    const firstChild = $(this).children().attr('class');
    // const url = $(this).find('a').attr('href');
    containers.push({
      container,
      firstChild,
      url
    });
  });

  $('.container-fluid', html).each(function() {
    const containerFluid = $(this).attr('class');
    const firstChild = $(this).children().attr('class');
    // const url = $(this).find('a').attr('href');
    containers.push({
      containerFluid,
      firstChild,
      url
    });
  })
  console.log(containers)
}).catch(err => console.log(err));


app.listen(PORT, () => console.log( `server running on PORT ${PORT}`));

