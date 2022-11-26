const mongoose = require("mongoose")
const vegetablesSchema = mongoose.Schema({
    vegetableName: {
        type: String,
        maxLength: 11
    },

    vegetableCost: Number,
    vegetableColour:{

        type: String,
        minLength: 4
    }
})

module.exports = mongoose.model("vegetables",
    vegetablesSchema) 