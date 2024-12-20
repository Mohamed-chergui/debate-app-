const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const VoteSchema = new Schema({
  

  match_id: {
    type: Schema.Types.ObjectId,  
    ref: 'Match' , 
    required: true
  },

  voter_id: {
    type: Schema.Types.ObjectId,  
    required: true
  },

  voted_for_id: {
    type: Schema.Types.ObjectId,  
    ref: 'User',  
    required: true
  },

  timestamp: {
    type: Date,  
    default: Date.now
  }
});

const Vote = mongoose.model("Vote", VoteSchema);

module.exports = Vote;