#!/usr/bin/env node
const { copyFile, readdir } = require('fs').promises;
const { red, green } = require('chalk');

const CURR_DIR = process.cwd();

const log = console.log;

const tidy = async () => {
  const templates = await readdir(`${__dirname}/templates`);
  templates.forEach((template) => {
    copyFile(
      `${__dirname}/templates/${template}`,
      `${CURR_DIR}/src/${template}`,
    )
      .then(() => log(green(`Created ./src/${template}`)))
      .catch((err) => log(red(err)));
  });
};

tidy();
