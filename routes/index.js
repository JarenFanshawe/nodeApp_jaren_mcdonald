var express = require('express');
var router = express.Router();
var config = require('../config');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('home', { title: 'Done yet?', message : "Handlebars is awesome" });
});

module.exports = router;
