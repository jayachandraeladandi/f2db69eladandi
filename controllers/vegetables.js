var Costume = require('../models/vegetables'); 
 
// List of all vegetables
exports.vegetables_list = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables list'); 
}; 
 
// for a specific vegetables. 
exports.vegetables_detail = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables detail: ' + req.params.id); 
}; 
 
// Handle vegetables create on POST. 
exports.vegetables_create_post = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables create POST'); 
}; 
 
// Handle vegetables delete form on DELETE. 
exports.vegetables_delete = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables delete DELETE ' + req.params.id); 
}; 
 
// Handle vegetables update form on PUT. 
exports.vegetables_update_put = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables update PUT' + req.params.id); 
}; 