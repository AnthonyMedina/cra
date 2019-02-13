function cra() {
  if [[ -z $1 ]]; then
    echo "Please provide a name for your app"
  elif [[ -n $1 ]]; then
    npx create-react-app $1
    rm -rf "$1/src/"
    templates="$ZSH/custom/plugins/cra/templates"
    cp -rf "$templates/." $1
    code $1
    cd $1 && git add . && git commit -m 'use custom templates'
    cd ..
  fi
}