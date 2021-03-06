module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import SemanticUI exposing (elem, icon)


-- component import example

import Components.Hello exposing (hello)


-- APP


main : Program Never Int Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : number
model =
    0



-- UPDATE


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1



-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib


view : Model -> Html Msg
view model =
    elem "container"
        [ style [ ( "margin-top", "30px" ), ( "text-align", "center" ) ] ]
        [ elem "row"
            []
            [ elem "twelve wide column"
                [ style [ ( "font-size", "3em"  ) ]  ]
                [ img [ src "static/img/elm.jpg", style styles.img ] []
                , hello model
                , p [] [ text "Elm Webpack Starter + semantic-ui" ]
                , elem "large primary labeled icon button"
                    [ onClick Increment ]
                    [ icon "star"
                    , text "FTW!"
                    ]
                ]
            ]
        ]



-- CSS STYLES


styles : { img : List ( String, String ) }
styles =
    { img =
        [ ( "width", "33%" )
        , ( "border", "4px solid #337AB7" )
        ]
    }



{-
     div [ class "container", style [("margin-top", "30px"), ( "text-align", "center" )] ][    -- inline CSS (literal)
       div [ class "row" ][
         div [ class "col-xs-12" ][
           div [ class "jumbotron" ][
             img [ src "static/img/elm.jpg", style styles.img ] []                             -- inline CSS (via var)
             , hello model                                                                     -- ext 'hello' component (takes 'model' as arg)
             , p [] [ text ( "Elm Webpack Starter" ) ]
             , button [ class "btn btn-primary btn-lg", onClick Increment ] [                  -- click handler
               span[ class "glyphicon glyphicon-star" ][]                                      -- glyphicon
               , span[][ text "FTW!" ]
             ]
           ]
         ]
       ]
     ]
   }
-}
