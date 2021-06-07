module.exports = {
    HOST: "127.0.0.1",
    USER: "ga1ileo",
    PASSWORD: "kyubatau",
    DB: "authdb",
    dialect: "mariadb",
    pool:{
        max:5,
        min:0,
        acquire:30000,
        idle: 10000
    }
};