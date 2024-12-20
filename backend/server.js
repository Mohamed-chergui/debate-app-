const express = require("express") ;   
const mongoose = require("mongoose") ; 
require("dotenv").config();   
const userRoute = require("./routes/userRoutes");

const app = express();

app.use( express.json() ); 



mongoose.connect(process.env.MONGODB_URI).then(
    () => {
   console.log("database connected succefuly") ; 

}).catch((error)=>{

        console.log("error connecting",process.env.MONGODB_URI );  

})

app.use( "/api" , userRoute) ; 


app.listen(3000 , () => {
    console.log("server is ruuning (listening on port 300 ) ") ; 
})