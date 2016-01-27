var path = require("path");

module.exports = {
  context: __dirname,
  entry: "./frontend/better_search.js",
  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts'),
    filename: "bundle.js"
  },
  resolve: {
    extensions: ["", ".js", '.jsx']
  }
};
