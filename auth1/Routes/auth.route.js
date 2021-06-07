const router = require('express').Router()
const signup = require('../Controller/auth.controller')
const login = require('../Controller/auth.controller')
const getCurrentUser = require('../Controller/auth.controller')
const {validateUser} = require('../Middleware/validation');
const {loginValidation} = require('../Middleware/loginvalidation');
const auth = require('../Middleware/auth')

router.post('/signup',validateUser,signup.signup)
router.post('/login',loginValidation,login.login)
router.get('/user',auth, getCurrentUser.getCurrentUser)

module.exports = router