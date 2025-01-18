const express = require('express');
const aboutHandler = require('./handelers/about');
const router = express.Router();

router.get('/', (req, res) => {
  res.send('module 1 index');
});

router.get('/about', aboutHandler);

module.exports = router;
