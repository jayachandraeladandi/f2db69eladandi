//var express = require('express');
//var router = express.Router();

/* GET home page. */
//router.get('/', function(req, res, next) {
//  res.render('vegetables', { title: 'Search Results vegetables' });
//});

//module.exports = router;
var express = require('express'); 
const vegetables_controlers= require('../controllers/vegetables'); 
var router = express.Router(); 
 
/* GET costumes */ 
router.get('/', vegetables_controlers.vegetables_view_all_Page ); 


/* GET detail vegetables page */
router.get('/detail', vegetables_controlers.vegetables_view_one_Page);


module.exports = router;