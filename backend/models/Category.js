const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const CategorySchema = new Schema({
  

  name: {
    type: String, 
    required: true
  },

  description: {
    type: String, 
    default: null
  }
});

const Category = mongoose.model("Category", CategorySchema);

module.exports = Category;