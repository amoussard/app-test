var express = require('express');
var router = express.Router();
var os = require('os');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.setHeader('Content-Type', 'application/json');
  res.send(JSON.stringify({
      title: 'Test',
      firstname: process.env.FIRSTNAME ? process.env.FIRSTNAME : 'no name' ,
      server: os.hostname()
  }));
});

module.exports = router;
