function cra() {
  if [[ -z $1 ]]; then
    echo "Please provide a name for your app"
    exit
  fi

  npx create-react-app $1
  rm -rf "$1/src/"
  templates="$ZSH/custom/plugins/cra/templates"

  if [[ $2 == "--typescript" ]]; then
    cp -rf "$templates/typescript/." $1
  else
    cp -rf "$templates/standard/." $1
  fi

  code $1
  cd $1 && git add . && git commit -m 'use custom templates'
  cd ..
}