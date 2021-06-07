
const jwt = require("jsonwebtoken");

module.exports = function(req, res, next) {
  const token = req.header("auth-token");
  if (!token) return res.status(401).json({ message: "Authentication Failed" });
  try {
    const val = jwt.verify(token, "anystring");
    req.user = val;
    next();
  } catch (e) {
    console.error(e);
    res.status(500).send({ message: "Token Invalid" });
  }
};