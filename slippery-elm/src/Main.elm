module Main exposing (main)
import View exposing (..)
import Html exposing (Html, div,text, button)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import DataStructure exposing (Msg)
import Browser

-- why not do an alias since they are all html msgs?
-- model is just data



type alias TeamModel =
    { team : Html Msg
    }

yankees : TeamModel
yankees = 
    { team = yankeesTeamView
    }

rays : TeamModel
rays = 
    { team = raysTeamView
    }

allTeams : TeamModel
allTeams =
    { team = allTeamView
    }

initialModel : TeamModel 
initialModel =
    allTeams

-- type Msg
--     = NavToYankees
--     | NavToRays
--     | NavToAllTeams


-- update : Msg -> Model -> Model
-- update msg model =
--     case msg of
--         NavToYankees ->
--             Yankees
--         NavToRays ->
--             Rays
--         NavToAllTeams ->
--             AllTeams
            
-- navigation : Html Msg
-- navigation =
--     div [ class "navigation" ]
--         [ button [ onClick NavToYankees ] [ text "Yankees" ]
--         , button [ onClick NavToRays ] [ text "Rays" ]
--         , button [ onClick NavToAllTeams ] [ text "All Teams" ]
--         ]

     
-- pass thru data into the view here. view should not import data
-- should only receive.paramater as function
view : viewModel -> Html Msg

main=
    Browser.sandbox
        { init = initialModel
        , view = view 
        }
    