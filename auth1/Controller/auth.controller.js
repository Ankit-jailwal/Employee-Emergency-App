const User = require('../Models/user.model')
const bycrypt = require('bcryptjs')
const jwt = require("jsonwebtoken");


//SignUp Controller
async function signup(req,res,next) {

  const salt = await bycrypt.genSalt(10);
  hashpassword = await bycrypt.hash(req.body.password, salt)

  const emailExist = await User.findOne({email: req.body.email})
  if(emailExist){
     res.status(400).json({"error":'Email already Exist'}) 
  }

  const user =  new User({
    name: req.body.name,
    email: req.body.email,
    password: hashpassword
  })
  try{
    const userSignup = await user.save()
    const payload = {
      user: {
        id: userSignup.id
      }
    };
    jwt.sign(payload,"anystring",{expiresIn: 10000},function(err, token)
    {
      if(err){
        res.send(err)
      }
      res.status(200).json({
        token,
        userSignup
      })
    })
  } 
  catch(err){
    res.status(400).json({'error':err})
  }
}

//Login Controller
async function login(req,res,next){
  const emailExist = await User.findOne({email: req.body.email})
  if(!emailExist){
    res.status(400).json({error:"Email not Found"})
  }
  const checkpassword = await bycrypt.compare(req.body.password, emailExist.password)
  if(!checkpassword){
    res.status(400).json({error:"Password mismatch"})
  }
  const token = jwt.sign({_id: emailExist.id},'anystring')
  res.header('auth-token',token).json({'Token':token})
}

async function getCurrentUser(req,res){
  console.log(req.user)
  try {
    const user = await User.findById(req.user._id);
    res.json(user);
  } catch (e) {
    res.send({ message: "Error in Fetching user" });
  }
}

module.exports = {
  signup,
  login,
  getCurrentUser,
}