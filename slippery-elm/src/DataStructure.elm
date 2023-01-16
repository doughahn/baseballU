module DataStructure exposing (..)

-- rename to model
-- ===============
-- Type Aliases
-- ===============

type alias Msg = Int
type AlEast 
    = Jays
    | Orioles
    | Rays
    | Bosox
    | Yankees
 
type alias Team =
    { teamName : String
    , teamPlayer: List Player
    , teamRating: LikertScale 
    }

type alias Player = 
    { playerName: String
    , playerPosition: List Position
    , playerJersey: Int
    , playerERA: Maybe Float
    , playerAVG: Maybe Float
    }

-- ===============
-- Custom Types
-- ===============

type Position
    = Catcher
    | First
    | Second
    | Third
    | Shortstop
    | Left
    | Center
    | Right
    | DH
    | Pitcher

type LikertScale 
    = Hated
    | Disliked
    | Neutral
    | Liked
    | Loved

positionString : Position -> String 
positionString position = case position of 
    Catcher ->
        "Catcher"
    First ->
        "First Base"
    Second -> 
        "Second Base"
    Third -> 
        "Third Base"
    Shortstop ->
        "Shortstop"
    Left ->
        "Left Field"
    Center ->
        "Center Field"
    Right ->
        "Right Field"
    DH ->
        "Designated Hitter"
    Pitcher ->
        "Ace Pitcher"

likertString : LikertScale -> String 
likertString likertScale = case likertScale of 
    Hated ->
        "F!ck"
    Disliked ->
        "Damn"
    Neutral -> 
        "Meh, it's "
    Liked -> 
        "Alright, it's"
    Loved ->
        "Hell Yeah! It's"

alEastString : AlEast -> String
alEastString alEast = case alEast of 
    Jays ->
        "Toronto Blue jays"
    Orioles -> 
        "Baltimore Orioles"
    Rays -> 
        "Tampa Bay Devil rays"
    Bosox ->
        "Boston Red Sox"
    Yankees ->
        "New York Yankees"


-- ===============
-- Player ERA View
-- ===============
playerEraString : Maybe Float -> String
playerEraString playerDisplayERA = 
    case playerDisplayERA of
        Nothing ->
            ""

        Just playerERA ->
            "ERA: " ++ String.fromFloat ( playerERA )

-- ===============
-- Player AVG View
-- ===============
playerAvgString : Maybe Float -> String
playerAvgString playerDisplayAVG = 
    case playerDisplayAVG of
        Nothing ->
            ""

        Just playerAVG ->
            "Batting Avg: " ++ String.fromFloat ( playerAVG )
            

teamPlayerList : Team -> List Player
teamPlayerList team =
    team.teamPlayer

-- ===============
-- Helpers
-- ===============
createPlayer : String -> List Position -> Int -> Maybe Float -> Maybe Float -> Player
createPlayer name position jersey era avg =  
        { playerName = name
        , playerPosition = position
        , playerJersey = jersey
        , playerERA = era
        , playerAVG = avg
        }

        