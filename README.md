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

  - on Windows:

    ```
        "[elm]": {
            "editor.formatOnSave": true,
        },
        "elm.formatCommand": ".\\node_modules\\.bin\\elm-format",
        "elm.compiler": ".\\node_modules\\.bin\\elm",
    ```

  - on macOS and Linux:

    ```
        "[elm]": {
            "editor.formatOnSave": true,
        },
        "elm.formatCommand": "./node_modules/.bin/elm-format",
        "elm.compiler": "./node_modules/.bin/elm",
    ```

---

## Useful Links

- **[Ellie Workshop Code](https://ellie-app.com/3kgtd6VfnmBa1)**
- [Elm Packages](https://package.elm-lang.org/)
- [HTML to Elm](https://mbylstra.github.io/html-to-elm/)
- [JSON to Elm](https://noredink.github.io/json-to-elm/)

## Snippets

- search form

  ```html
  <form class="search-form">
    <input class="search-input" type="text" placeholder="Search Movies by Title">
    <input class="search-button" type="submit" value="Search">
  </form>
  ```

- movie list

  ```html
  <div class="movie-list">
    <div class="movie-item">
      <div class="movie-item-poster" style="background-image: url('https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_SX300.jpg');"></div>
      <h3 class="movie-item-title">Blade Runner 2049</h3>
    </div>
  </div>
  ```

- HTTP request

  ```elm
  fetchSearchResults : Cmd Msg
  fetchSearchResults =
      let
          url =
              Url.Builder.crossOrigin "https://www.omdbapi.com/"
                  []
                  [ Url.Builder.string "apikey" "2099b44a"
                  , Url.Builder.string "s" "blade runner"
                  ]
      in
      decodeSearchResults
          |> Http.get url
          |> RemoteData.sendRequest
          |> Cmd.map SearchResultsReceived
  ```

- `SearchResults` JSON

  ```json
  {
    "Search": [
      {
        "Title": "Blade Runner",
        "Year": "1982",
        "Type": "movie",
        "Poster": "https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"
      }
    ]
  }
  ```

- `Movie` JSON

  ```json
  {
    "Title": "Blade Runner",
    "Year": "1982",
    "Type": "movie",
    "Poster": "https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"
  }
  ```
