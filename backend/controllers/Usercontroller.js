
const user = require("../models/User") ; 




const Createuser = async (req, res) => {

    try {
       const  newuser =   new user({
         "user_id" : "12121212121" , 
         "email" : "edjkndsnfjd" , 
         "password" : "sjkqdnqsd" , 
         "username":"jilali"
       }) 
       await newuser.save() ; 
       res.json(newuser) ; 
    } 
    catch (error) {
        console.error("Error in Createuser:", error);
        res.status(500).json({ error: "Something went wrong" });
    }
};




const getUsers = async (req, res) => {
    try {
       const  users =  await user.find() ; 

       res.json(users) ; 
    } 
    catch (error) {
        console.error("Error in fetchingusers:", error);
        res.status(500).json({ error: "Something went wrong" });
    }
};





const getUser = async (req , res) => {
try{

    const fetcheduser = await user.findById("6765ca3621c09d03193e97c8") ; 

    if (!fetcheduser) {
        return res.status(404).json({ error: "User not found" });  
      }

    res.status(200).json(fetcheduser) ; 

}
catch(e){

    console.error("Error in fetchingguser:", e);
    res.status(500).json({ e: "Something went wrong" });
}
}

const updateUser = async ( req , res ) => {

    try{

        const fetcheduser =   await user.findByIdAndUpdate("6765ca3621c09d03193e97c8" , {
            "username" : "menjilalillnadia"   
        } , { new: true } , ) ;
    
        if (!fetcheduser) {
            return res.status(404).json({ error: "User not found or updated" });  
          }
    
        res.status(200).json(fetcheduser) ; 
    
    }
    catch(e){
    
        console.error("Error in fetchingguser:", e);
        res.status(500).json({ e: "Something went wrong" });
    }

}













module.exports = { Createuser , getUsers  , getUser , updateUser}  ; 



