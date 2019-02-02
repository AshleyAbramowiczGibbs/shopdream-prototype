// vue.config.js
module.exports = {
  // options...
  baseUrl:
    process.env.NODE_ENV === "development" ? "http://localhost:3000" : "https://intense-earth-34277.herokuapp.com/"
};
