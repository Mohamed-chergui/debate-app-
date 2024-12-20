const mongoose = require("mongoose") ; 

const Schema = mongoose.Schema ;

const matchSchema = new Schema({

    match_id: {
      type: String,
      required: true,
      unique: true
    },
    player1_id: {
      type: Schema.Types.ObjectId,   
      ref: 'User',                   
      required: true
    },
    
    player2_id: {
      type: Schema.Types.ObjectId,   
      ref: 'User',
      required: true
    },
    
    topic_id: {
      type: Schema.Types.ObjectId,   
      ref: 'Topic',                  
      required: true
    },
    
    winner_id: {
      type: Schema.Types.ObjectId,   
      ref: 'User',                   
      default: null
    },
    
    start_time: {
      type: Date,
      required: true,
      default: Date.now
    },
    end_time: {
      type: Date,
      default: null
    }
}) ; 




const Match = mongoose.model("Message" , matchSchema ) ; 

module.exports = Match ; 