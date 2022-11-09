const mongoose = require("mongoose") 
const vegetablesSchema = mongoose.Schema({ 
vegetableName: String, 
 vegetableCost: Number, 
 vegetableColour: String 
}) 
 
module.exports = mongoose.model("Vegetables", 
vegetablesSchema) 