
var Vegetables = require('../models/vegetables'); 
 
// List of all vegetables 
exports.vegetables_list = async function(req, res) { 
    try{ 
        theVegetables = await Vegetables.find(); 
        res.send(theVegetables); 
    } 
    catch(err){ 
        res.status(500); 
        res.send(`{"error": ${err}}`); 
    }   
}; 
// VIEWS 
// Handle a show all view 
exports.vegetables_view_all_Page = async function(req, res) { 
    try{ 
        theVegetables = await Vegetables.find(); 
        res.render('vegetables', { title: 'vegetables Search Results', results: theVegetables }); 
    } 
    catch(err){ 
        res.status(500); 
        res.send(`{"error": ${err}}`); 
    }   
}; 
 
// for a specific vegetables. 
exports.vegetables_detail = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables detail: ' + req.params.id); 
}; 
 
// Handle vegetables create on POST. 
// Handle Costume create on POST. 
exports.vegetables_create_post = async function(req, res) { 
    console.log(req.body) 
    let document = new Vegetables(); 
    // We are looking for a body, since POST does not have query parameters. 
    // Even though bodies can be in many different formats, we will be picky 
    // and require that it be a json object 
    // {"costume_type":"goat", "cost":12, "size":"large"} 
    document.vegetableName = req.body.vegetableName; 
    document.vegetableCost = req.body.vegetableCost; 
    document.vegetableColour = req.body.vegetableColour; 
    try{ 
        let result = await document.save(); 
        res.send(result); 
    } 
    catch(err){ 
        res.status(500); 
        res.send(`{"error": ${err}}`); 
    }   
}; 
 
// Handle vegetables delete form on DELETE. 
exports.vegetables_delete = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables delete DELETE ' + req.params.id); 
}; 
 
// Handle vegetables update form on PUT. 
exports.vegetables_update_put = function(req, res) { 
    res.send('NOT IMPLEMENTED: vegetables update PUT' + req.params.id); 
}; 

