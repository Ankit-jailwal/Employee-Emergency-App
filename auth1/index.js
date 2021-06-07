const express = require('express')
const bodyparser = require('body-parser');
const mongoose = require('mongoose')
const router = require('./Routes/auth.route')
var app = express()

//Routes
app.use(bodyparser.json())
app.get('/', function(req,res){
  res.send('Hello world')
})
app.use('/account/api',router)

//MongoDb connection
mongoose.connect('mongodb://localhost/test', {useNewUrlParser: true, useUnifiedTopology: true});
mongoose.connection.once('open',function(){
  console.log('Database connected Successfully');
}).on('error',function(err){
  console.log('Error', err);
})

//Server 
app.listen('8000',function(req,res){
  console.log('Serve is up and running at the port 8000')
})