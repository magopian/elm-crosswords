module Main exposing (main)

import Html
import Html.Attributes


main =
    Html.div
        [ Html.Attributes.style "background-color" "#000"
        , Html.Attributes.style "height" "500px"
        , Html.Attributes.style "width" "500px"
        , Html.Attributes.style "display" "grid"
        , Html.Attributes.style "grid-template-columns" "repeat(3, 1fr)"
        , Html.Attributes.style "grid-auto-rows" "1fr"
        , Html.Attributes.style "grid-gap" "1px"
        , Html.Attributes.style "padding" "1px"
        ]
        [ Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        , Html.div [ Html.Attributes.style "background-color" "#fff" ] []
        ]
