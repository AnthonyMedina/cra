function cra () {
  npx create-react-app $1
  rm $1/src/App.js $1/src/App.test.js $1/src/App.css $1/src/serviceWorker.js $1/src/logo.svg
  repo="https://raw.githubusercontent.com/AnthonyMedina/tidy-cra/master/templates"

  files=('/app.css' '/app.js' '/index.css' '/index.js')

  for file in "${files[@]}"; do
    curl $repo$file > $1/src$file --silent
  done
  code $1
}