module Main exposing (main)

import Browser
import Html exposing (Html, a, div, form, h1, h2, h3, h4, img, input, label, pre, text)
import Html.Attributes exposing (attribute, class, for, href, id, name, placeholder, src, style, type_, value)
import Html.Events exposing (onInput, onSubmit)
import Http
import Json.Decode
import Json.Decode.Pipeline
import RemoteData exposing (RemoteData(..), WebData)
import Url.Builder



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ img [ src "%PUBLIC_URL%/logo.svg" ] []
            , h1 [] [ text "Hello, LambdUp Workshop!" ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
