const path = require('path');

module.exports = {
  output: {
    filename: './src/index.js'
  },
  module: {
    rules: [
      { test: /\.txt$/, use: 'raw-loader' }
    ]
  }
};