#!/usr/bin/env node
const { copyFile, readdir, unlink } = require('fs').promises;
const { red, green } = require('chalk');

const CURR_DIR = process.cwd();

const log = console.log;

const filesToDelete = [
  'App.test.js',
  'App.js',
  'App.css',
  'logo.svg',
  'serviceWorker.js',
];

const tidy = async () => {
  filesToDelete.forEach(file => {
    unlink(`${CURR_DIR}/src/${file}`)
      .then(() => log(green(`Deleted ${file}`)))
      .catch(err => log(red(err)));
  });
  const templates = await readdir(`${__dirname}/templates`);
  templates.forEach(template => {
    copyFile(
      `${__dirname}/templates/${template}`,
      `${CURR_DIR}/src/${template}`,
    )
      .then(() => log(green(`Created ./src/${template}`)))
      .catch(err => log(red(err)));
  });
};

tidy();
