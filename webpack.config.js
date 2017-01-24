'use strict';

const config = {
  entry: './web/static/js/app.js',
  output: {
    path: "./priv/static",
    filename: "js/app.js"
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "eslint-loader"
      },
      {
        test: /\.vue$/,
        loader: 'vue'
      },
      {
        test: /\.s[a|c]ss$/,
        loader: 'style!css!sass'
      }
    ],
  },
  devtool: 'inline-source-map',
  resolveLoader: {
    modules: ['node_modules', `${__dirname}/node_modules`],
  }
};

module.exports = config;