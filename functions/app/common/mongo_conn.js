const { inspect } = require('util');
const mongoose = require('mongoose');

const { MONGO_URI } = require('../constants');

const conn = async () => {
  //   const conn = mongoose.createConnection(MONGO_URI);
  const conn = mongoose.connect(MONGO_URI, {
    // bufferCommands: false,
    // autoCreate: false,
  });

  const db = mongoose.connection;

  db.once('open', () => {
    console.log('MongoDB is open.');
  });

  db.once('connecting', () => {
    console.log('MongoDB is connecting.');
  });

  db.once('connected', () => {
    console.log('MongoDB is connected.');
  });

  db.once('disconnecting', () => {
    console.log('MongoDB is disconnecting.');
  });

  db.once('disconnected', () => {
    console.log('MongoDB is disconnected.');
  });

  db.once('reconnected', () => {
    console.log('MongoDB is reconnected.');
  });

  db.on('error', (error) => {
    console.log('MongoDB is on error.', inspect(error));
  });

  return conn;
};

module.exports = conn;
