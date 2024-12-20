const mongoose = require("mongoose") ;  

const Schema = mongoose.Schema ; 





const UserSchema = new Schema ({
    
username : {  
    type : String ,
     required  : true , 
} , 

email :{ 
    type : String  , 
    required : true  , 
    unique : true ,  
}  , 

password :{
    type : String , required : true 
} , // not hashed for now


profilePicture : {
    
    type : String , default : null 
} , 

total_wins :  {
    type : Number  , 
    default : 0 , 

} , 

total_loses : {
    type : Number ,
    default : 0 ,   
} , 

rating : {
    type : Number  ,
    default : 0 ,  
} ,


created_at :{
type : Date  ,
default : Date.now ,  
}     

}) 


const User = mongoose.model("User" , UserSchema )   ; 
module.exports = User ; 