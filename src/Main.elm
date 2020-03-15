module Main exposing (main)

import Html
import Html.Attributes


gridWidth =
    3


main =
    Html.div
        (gridStyle gridWidth)
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


gridStyle : Int -> List (Html.Attribute ())
gridStyle width =
    [ Html.Attributes.style "background-color" "#000"
    , Html.Attributes.style "height" "500px"
    , Html.Attributes.style "width" "500px"
    , Html.Attributes.style "display" "grid"
    , gridTemplateColumns width
    , Html.Attributes.style "grid-auto-rows" "1fr"
    , Html.Attributes.style "grid-gap" "1px"
    , Html.Attributes.style "padding" "1px"
    ]


gridTemplateColumns : Int -> Html.Attribute ()
gridTemplateColumns width =
    Html.Attributes.style
        "grid-template-columns"
        ("repeat(" ++ String.fromInt width ++ ", 1fr)")
