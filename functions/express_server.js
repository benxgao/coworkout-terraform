const app = require('./app');
// const connectMongoDB = require('./app/common/mongo_conn');

const PORT = 8080;
const HOST = '0.0.0.0';

/**
 * Start the app via Express.js
 */
const startServer = async () => {
  try {
    // return await connectMongoDB().then(() => {
    return app.listen(PORT, () => console.log(`Server is running on http://${HOST}:${PORT}`));
    // });
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

startServer();
