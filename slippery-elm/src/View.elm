module View exposing (allTeamView, yankeesTeamView, raysTeamView)
import Data exposing (rays, yankees)
import DataStructure exposing (Msg, Team, likertString, Player, playerEraString, playerAvgString, LikertScale, Position, positionString, AlEast, alEastString)
import Html exposing (Html, div, h2, h3, p, ul, li, text)

-- view x, xy

-- ===============
-- League
-- ===============
alEastView : AlEast -> Html msg
alEastView alEast = text (alEastString alEast)

-- ===============
-- Player Position
-- ===============
playerPositionList : List Position -> Html Msg
playerPositionList positions =
    ul [] (
        List.map positionView positions
    )

positionView : Position -> Html Msg
positionView position = 
    li []
        [text (positionString position)]

-- ===============
-- Likert
-- ===============
likertView : LikertScale -> Html Msg
likertView likertScale = text (likertString likertScale)

-- ===============
-- ERA
-- ===============
playerEraView : String -> Html Msg
playerEraView playerEraString = 
    text ( playerEraString )

-- ===============
-- ERA
-- ===============
playerAvgView : String -> Html Msg
playerAvgView playerAvgString = 
    text ( playerAvgString )


-- ===============
-- Name
-- ===============
playerNameView : String -> Html Msg
playerNameView playerName =
    text ("Name: " ++ playerName)

-- ===============
-- Player with Elements
-- ===============

playerView : Player -> Html Msg
playerView player =
    div []
        [
            h3 [] 
            [
                (player.playerName |> playerNameView )
            ]
            , div []
            [
                text ( "Positions: " )
                , ( playerPositionList player.playerPosition )
            ]
            , p []
            [
                text ( "Jersey #: " )
                , text ( String.fromInt ( player.playerJersey ))
            ]
            , p [] 
            [
                ( player.playerERA |> playerEraString |> playerEraView )
            ]
            , p []
            [
                ( player.playerAVG |> playerAvgString |> playerEraView )
            ]
        ]

-- ===============
-- Map Elements
-- ===============

teamPlayerElement : Team -> List (Html Msg)
teamPlayerElement team = 
    List.map playerView team.teamPlayer

-- ===============
-- The Team
-- ===============
teamView : Team -> Html Msg
teamView team =
    div []
        [
            h2 [] 
            [
                text (likertString team.teamRating ++ " the " ++ team.teamName)
            ]
            , div []
                (teamPlayerElement team)
        ]

allTeamView : Html Msg
allTeamView =
    div [] [
        div [] [teamView rays, teamView yankees]
    ]
-- later could map a list of all teams, but for not this is OK.alias

yankeesTeamView : Html Msg
yankeesTeamView =
    div [] [
        div [] [teamView yankees]
    ] 

raysTeamView : Html Msg
raysTeamView =
    div [] [
        div [] [teamView rays]
    ]

