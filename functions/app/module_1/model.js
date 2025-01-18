const mongoose = require('mongoose');

const options = {
  toJSON: {
    transform: (doc, obj) => {
      delete obj.__v;
      return obj;
    },
  },
};

const Schema = mongoose.Schema;

const Module1Schema = new Schema(
  {
    a: String,
    b: Date,
  },
  options,
);

// const Module1 = conn().model('Module1', Module1Schema);
const Module1Model = mongoose.model('Module1', Module1Schema);

module.exports = Module1Model;
