const mongoose = require("mongoose")
const vegetablesSchema = mongoose.Schema({
    vegetableName: {
        type: String,
        maxLength: 9
    },

    vegetableCost: Number,
    vegetableColour: String
})

module.exports = mongoose.model("vegetables",
    vegetablesSchema) 