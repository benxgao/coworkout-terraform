import prettierRules from './.prettierrc.json';

module.exports = {
  env: { jest: true, browser: true },
  extends: ['eslint:recommended'],
  plugins: ['jest', 'prettier'],
  parserOptions: {
    parser: 'babel-eslint', // the typescript-parser for eslint, instead of tslint
    sourceType: 'module', // allow the use of imports statements
    ecmaVersion: 2021, // allow the parsing of modern ecmascript
    ecmaFeatures: {
      jsx: true,
    },
  },
  settings: {
    'import/extensions': ['.js', 'ts'],
  },
  rules: {
    'prettier/prettier': ['error', prettierRules],
  },
};
