module Components.Hello exposing (..)

import Html exposing (Html, p, text)
import String

-- hello component
hello : Int -> Html msg
hello model =
  p [] [ text ( "Hello, Elm" ++ ( "!" |> String.repeat model ) ) ]
