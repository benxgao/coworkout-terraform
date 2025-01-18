const Module1Model = require('./model');
const logger = require('../common/logger');

const getAllModels = async () => {
  const docs = await Module1Model.find().lean().select('-__v -_id');

  logger.log('All Module1Models', docs);

  return docs;
};

const createModel = async () => {
  const doc = await Module1Model.create({
    a: 'a',
    b: Date.now(),
  }).then((x) => x.toJSON());

  logger.log('Created Module1Model', doc);

  return doc;
};

module.exports = {
  getAllModels,
  createModel,
};
