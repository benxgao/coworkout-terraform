const functions = require('@google-cloud/functions-framework');
const connectMongoDB = require('./app/common/mongo_conn');
const app = require('./app');

/**
 * Start the app via cloud-functions
 */

/**
 * [CLOUD_FUNCTIONS_HOST]/api
 */
functions.http('api', async (req, res) => {
  return await connectMongoDB().then(() => {
    return app(req, res);
  });
});

/**
 * [CLOUD_FUNCTIONS_HOST]/cron
 */
functions.http('cron', (req, res) => {
  res.send('cron');
});
