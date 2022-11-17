
var Vegetables = require('../models/vegetables');

// List of all vegetables 
exports.vegetables_list = async function (req, res) {
    try {
        theVegetables = await Vegetables.find();
        res.send(theVegetables);
    }
    catch (err) {
        res.status(500);
        res.send(`{"error": ${err}}`);
    }
};
// VIEWS 
// Handle a show all view 
exports.vegetables_view_all_Page = async function (req, res) {
    try {
        theVegetables = await Vegetables.find();
        res.render('vegetables', { title: 'vegetables Search Results', results: theVegetables });
    }
    catch (err) {
        res.status(500);
        res.send(`{"error": ${err}}`);
    }
};

// for a specific vegetables. 
exports.vegetables_detail = async function (req, res) {
    console.log("detail" + req.params.id)
    try {
        result = await Vegetables.findById(req.params.id)
        res.send(result)
    } catch (error) {
        res.status(500)
        res.send(`{"error": document for id ${req.params.id} not found`);
    }
};
// Handle vegetables create on POST. 
// Handle Costume create on POST. 
exports.vegetables_create_post = async function (req, res) {
    console.log(req.body)
    let document = new Vegetables();
    // We are looking for a body, since POST does not have query parameters. 
    // Even though bodies can be in many different formats, we will be picky 
    // and require that it be a json object 
    // {"costume_type":"goat", "cost":12, "size":"large"} 
    document.vegetableName = req.body.vegetableName;
    document.vegetableCost = req.body.vegetableCost;
    document.vegetableColour = req.body.vegetableColour;
    try {
        let result = await document.save();
        res.send(result);
    }
    catch (err) {
        res.status(500);
        res.send(`{"error": ${err}}`);
    }
};



// Handle vegetables update form on PUT. 
exports.vegetables_update_put = async function (req, res) {
    console.log(`update on id ${req.params.id} with body
    ${JSON.stringify(req.body)}`)
    try {
        let toUpdate = await Vegetables.findById(req.params.id)
        // Do updates of properties
        if (req.body.vegetableName)
            toUpdate.vegetableName = req.body.vegetableName;
        if (req.body.vegetableCost) toUpdate.vegetableCost = req.body.vegetableCost;
        if (req.body.vegetableColour) toUpdate.vegetableColour = req.body.vegetableColour;
        let result = await toUpdate.save();
        console.log("Sucess " + result)
        res.send(result)
    } catch (err) {
        res.status(500)
        res.send(`{"error": ${err}: Update for id ${req.params.id}
    failed`);
    }
};


// Handle Costume delete on DELETE.
exports.vegetables_delete = async function (req, res) {
    console.log("delete " + req.params.id)
    try {
        result = await Vegetables.findByIdAndDelete(req.params.id)
        console.log("Removed " + result)
        res.send(result)
    } catch (err) {
        res.status(500)
        res.send(`{"error": Error deleting ${err}}`);
    }
};

// Handle a show one view with id specified by query
exports.vegetables_view_one_Page = async function (req, res) {
    console.log("single view for id " + req.query.id)
    try {
        result = await Vegetables.findById(req.query.id)
        res.render('vegetabledetail',
            { title: 'Vegetables Detail', toShow: result });
    }
    catch (err) {
        res.status(500)
        res.send(`{'error': '${err}'}`);
    }
};

// Handle building the view for creating a costume.
// No body, no in path parameter, no query.
// Does not need to be async
exports.vegetables_create_Page = function (req, res) {
    console.log("create view")
    try {
        res.render('vegetablescreate', { title: 'Vegetables Create' });
    }
    catch (err) {
        res.status(500)
        res.send(`{'error': '${err}'}`);
    }
};
