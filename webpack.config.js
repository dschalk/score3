module.exports = {
  entry: ['./app/main.js'],
  output: {
    path: './app',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      { test: /\.js$/, loader: 'jsx-loader' }
    ]
  }
};