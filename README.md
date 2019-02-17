# CRA

Run Create React App, removing extras.

## Installation

**This assumes several things:**

1. You are running [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. You have the `code` shell command installed to launch VS Code
3. You have `npx`
4. I used this with `yarn`
5. Probably some other stuff

Clone the repo into your oh-my-zsh custom plugins:

```bash
git clone https://github.com/AnthonyMedina/cra.git $ZSH/custom/plugins/cra
```

Add this `cra` to the plugins array in your `.zshrc`:

```bash
plugins=(... cra)
```

Source your `.zshrc` to register the changes:

```bash
source ~/.zshrc
```

## Script

```bash
function cra() {
  if [[ -z $1 ]]; then
    echo "Please provide a name for your app"
    exit
  fi

  npx create-react-app $1 $2
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
```

## Disclaimer

I take no responsibility for this
