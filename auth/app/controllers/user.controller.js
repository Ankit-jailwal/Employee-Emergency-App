exports.allAccess = (req, res) => {
    res.status(200).send("Public Data.");
};

exports.userBoard = (req,res) => {
    res.status(200).send("User Data");
};

exports.adminBoard = (req,res) =>{
    res.status(200).send("Admin Data.");
};

exports.moderatorBoard = (req,res) => {
    res.status(200).send("Moderator Data");
};