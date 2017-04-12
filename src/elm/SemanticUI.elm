module SemanticUI exposing (elem, icon)

import Html exposing (Html, Attribute, div, node, text)
import Html.Attributes exposing (class)


elem : String -> List (Attribute msg) -> List (Html msg) -> Html msg
elem classes attrs =
    div <| (class <| "ui " ++ classes) :: attrs


icon : String -> Html msg
icon name =
    node "i" [ class <| name ++ " icon" ] []
