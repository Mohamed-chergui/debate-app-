const mongoose = require("mongoose");
const Schema = mongoose.Schema;




const messageSchema = new Schema({
  message_id: {
    type: String,
    required: true,
    unique: true, 
  },
  
  sender_id: {
    type: Schema.Types.ObjectId,
    ref: 'User', 
    required: true,
  },
  
  content: {
    type: String,
    required: true, 
  },

  timestamp: {
    type: Date,
    required: true,
    default: Date.now, 
  },
});


const Message = mongoose.model("Message", messageSchema);

module.exports = Message;