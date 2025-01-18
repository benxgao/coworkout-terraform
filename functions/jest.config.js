module.exports = {
  collectCoverageFrom: ['<rootDir>/functions/**/*.js'],
  testMatch: ['<rootDir>/functions/**/__tests__/**/*.test.js'],
  transform: {
    '^.+\\.[t|j]sx?$': 'babel-jest',
  },
};
