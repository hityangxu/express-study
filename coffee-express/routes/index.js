// Generated by CoffeeScript 1.10.0
(function() {
  var express, router;

  express = require('express');

  router = express.Router();

  router.get('/', function(req, res) {
    return res.render('index', {
      title: 'Express'
    });
  });

  module.exports = router;

}).call(this);

//# sourceMappingURL=index.js.map