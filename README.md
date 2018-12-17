# Tidy Create React App

## Example

In `.zshrc`:

```
function cra () {
  npx create-react-app $1
  cd $1
  rm src/App.js src/App.test.js src/App.css src/serviceWorker.js src/logo.svg
  repo=https://raw.githubusercontent.com/AnthonyMedina/tidy-cra/master/templates
  curl $repo/app.css > src/app.css
  curl $repo/app.js > src/app.js
  curl $repo/index.css > src/index.css
  curl $repo/index.js > src/index.js
  code .
}
```

## Disclaimer

I take no responsibility for this
