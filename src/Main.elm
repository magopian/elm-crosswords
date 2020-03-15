module Main exposing (main)

import Html
import Html.Attributes


gridWidth =
    4


gridHeight =
    3


main =
    Html.div
        (gridStyle gridWidth)
        (List.concat <| grid gridWidth gridHeight)


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


grid : Int -> Int -> List (List (Html.Html ()))
grid width height =
    List.range 1 height
        |> List.map (\_ -> gridRow width)


gridRow : Int -> List (Html.Html ())
gridRow width =
    List.range 1 width
        |> List.map (\_ -> gridCell)


gridCell : Html.Html ()
gridCell =
    Html.div [ Html.Attributes.style "background-color" "#fff" ] []
