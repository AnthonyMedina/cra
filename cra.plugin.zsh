function cra() {
  npx create-react-app $1
  rm -rf "$1/src/"
  templates="$ZSH/custom/plugins/cra/templates"
  cp -rf "$templates/." $1
  code $1
}