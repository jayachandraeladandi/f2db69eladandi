var express = require('express'); 
var router = express.Router(); 
 
// Require controller modules. 
var api_controller = require('../controllers/api'); 
var vegetables_controller = require('../controllers/vegetables'); 
 
/// API ROUTE /// 
 
// GET resources base. 
router.get('/', api_controller.api); 
 
/// COSTUME ROUTES /// 
 
// POST request for creating a vegetables.  
router.post('/vegetables', vegetables_controller.vegetables_create_post); 
 
// DELETE request to delete vegetables. 
router.delete('/vegetables/:id', vegetables_controller.vegetables_delete); 
 
// PUT request to update vegetables. 
router.put('/vegetables/:id', vegetables_controller.vegetables_update_put); 
 
// GET request for one vegetables. 
router.get('/vegetables/:id', vegetables_controller.vegetables_detail); 
 
// GET request for list of all vegetables items. 
router.get('/vegetables', vegetables_controller.vegetables_list); 
 
module.exports = router; 
 