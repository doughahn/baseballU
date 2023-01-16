module Data exposing (..)

import DataStructure exposing (..)

-- 1. Add ERA and Batting Avg1
-- 2. Display either ERA or batting avg or both

rays : Team 
rays =
    {
        teamName = "Tampa Bay Rays"
        , teamPlayer = 
            [     
                createPlayer "Fake Ohtani" [Pitcher] 20 (Just 2.96) (Just 0.267)
                , createPlayer "Yandy Diaz" [Third, Shortstop] 2 (Nothing) (Just 0.296)
                , createPlayer "Wander Franco" [Shortstop] 5 (Nothing) (Just 0.282)
                , createPlayer "Randy Arozarena" [Left, Right] 56 (Nothing) (Just 0.263)
                , createPlayer "Harold Ramirez" [DH] 43 (Nothing) (Just 0.300)
                , createPlayer "Ji-Man Choi" [First] 26 (Nothing) (Just 0.239)
                , createPlayer "Isaac Paredes" [Second] 17 (Nothing) (Just 0.205)
                , createPlayer "Manuel Margot" [Right] 13 (Nothing) (Just 0.254)
                , createPlayer "Christian Bethancourt" [Catcher] 14 (Nothing) (Just 0.234)
                , createPlayer "Jose Siri" [Center] 22 (Nothing) (Just 0.225)
            ]
        , teamRating =  Loved
    }

yankees : Team 
yankees =
    {
        teamName = "New York Yankees"
        , teamPlayer = 
            [     
                createPlayer "Gerrit Cole" [Pitcher] 45 (Just 3.23) (Nothing)
                , createPlayer "Josh Donaldson" [Third] 28 (Nothing) (Just 0.265)
                , createPlayer "Oswald Peraza" [Shortstop] 91 (Nothing) (Just 0.306)
                , createPlayer "Oswaldo Cabrera" [Left] 95 (Nothing) (Just 0.247)
                , createPlayer "Giancarlo Stanton" [DH] 27 (Nothing) (Just 0.264)
                , createPlayer "Anthony Rizzo" [First] 48 (Just 0.0) (Just 0.265)
                , createPlayer "Gleyber Torres" [Second] 25 (Nothing) (Just 0.265)
                , createPlayer "Aaron Judge Not a Giant" [Right] 99 (Nothing) (Just 0.284)
                , createPlayer "Jose Trevinio" [Catcher] 39 (Nothing) (Just 0.246)
                , createPlayer "Harrison Bader" [Center] 22 (Nothing) (Just 0.245)
            ]
        , teamRating =  Hated
    }

