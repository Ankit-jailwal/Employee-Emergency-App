const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

var corsOptions = {
    origin:"127.0.0.1:8081"
};

app.use(cors(corsOptions));

app.use(express.json());

app.use(express.urlencoded({extended: true}));

app.get("/", (req,res)=>{
    res.json({message:"Welcome"});
});

require('./app/routes/auth.routes')(app);
require('./app/routes/user.routes')(app);

const PORT = process.env.PORT || 8080;
app.listen(PORT,()=>{
    console.log(`Server is running on port ${PORT}.`);
})



const db = require("./app/models");
const Role = db.role;

db.sequelize.sync();

function initial(){
    Role.create({
        id: 1,
        name:"user"
    });
    Role.create({
        id:2,
        name:"moderator" 
    });
    Role.create({
        id: 3,
        name: "admin"
    });
}