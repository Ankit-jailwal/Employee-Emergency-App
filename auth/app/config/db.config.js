module.exports = {
    HOST: "locahost",
    USER: "rashi",
    PASSWORD: "hdmi1234",
    DB: "authdb",
    dialect: "mysql",
    pool:{
        max:5,
        min:0,
        acquire:30000,
        idle: 10000
    }
};