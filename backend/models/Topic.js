const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const TopicSchema = new Schema({
  

  category: {
    type: String,
    required: true ,
    ref  : "Category" , 
  },

  title: {
    type: String, 
    required: true
  },

  description: {
    type: String, 
    default: null
  }
});

const Topic = mongoose.model("Topic", TopicSchema);

module.exports = Topic;