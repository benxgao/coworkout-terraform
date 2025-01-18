const { getAllModels, createModel } = require('../service');

const aboutHandler = async (req, res) => {
  const allModels = await getAllModels();

  console.log('allModels', allModels);

  res.send(`${JSON.stringify(allModels)}`);
};

module.exports = aboutHandler;
