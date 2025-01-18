require('dotenv').config();

const MONGO_URI = `mongodb+srv://${process.env.MONGO_USERNAME}:${process.env.MONGO_PASSWORD}@${process.env.MONGO_HOST}/dev`;

module.exports = {
  MONGO_URI,
};
