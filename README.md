# [LambdUp 2018](https://www.lambdup.io/) - Elm Workshop

<img class="navbar-brand__img" src="https://www.lambdup.io/assets/images/icons/pictogram.svg" alt="LambdUp" width=50 height=50 />

Please **clone this repo** to your notebook and follow those sections before the workshop (so we will have a smooth start):

- **Requirement**
- **Installation**
- **Running Dev Environment**
- **Suggested Elm Code Editor**

## Requirements

- [Node.js](https://nodejs.org/) v8.11.0, v10.9.0 or later
  - it is suggested to use [nvm - Node Version Manager](https://github.com/creationix/nvm) (for windows use [nvm-windows](https://github.com/coreybutler/nvm-windows))

## Installation

Open your terminal and run following commands:

```sh
cd <root directory of this repo>
npm install --global yarn
yarn install
```

## Running Dev Environment

Run following commands in your terminal:

```sh
cd <root directory of this repo>
yarn dev
```

Then open [http://localhost:3000](http://localhost:3000/) in your web browser.

You should see in your browser **LambdUp logo** and **"Hello, LambdUp Workshop!"** message.

## Suggested Elm Code Editor

You can use any editor that can edit Elm code.

Suggested code editor is [Visual Studio Code](https://code.visualstudio.com).
It's free, open source, has easy integration with Elm and runs on Windows, macOS, and Linux.

After installation run the editor and follow these steps:

- install [Elm extension for VS Code](https://marketplace.visualstudio.com/items?itemName=sbrink.elm)
- add following lines to your ["User Settings"](https://code.visualstudio.com/docs/getstarted/settings) in VS Code:

  ```
      "[elm]": {
          "editor.formatOnSave": true,
      },
      "elm.formatCommand": "./node_modules/.bin/elm-format",
  ```
