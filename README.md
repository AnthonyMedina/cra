# Tidy Create React App

This package is a command line utility for speeding up the deletion of unwanted code in a fresh create-react-app project.

## Installation

`git clone` this repo

`cd` into the newly created directory

`npm i -g`

## Use

`npx create-react-app <your-project-name>`

`cd <your-project-name>`

`tidy-cra`

## Automate

In `.zshrc`:

```
function cra () {
  npx create-react-app $1
  cd $1
  rm src/App.js src/App.test.js src/App.css src/serviceWorker.js src/logo.svg
  tidy-cra
  code .
}
```

## Disclaimer

I take no responsibility for this
