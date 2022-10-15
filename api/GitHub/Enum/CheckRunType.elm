module GitHub.Enum.CheckRunType exposing (CheckRunType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, CheckRunType
-}


import Json.Decode
import Json.Encode


type CheckRunType
    = ALL
    | LATEST


list : List CheckRunType
list =
    [ ALL, LATEST ]


decoder : Json.Decode.Decoder CheckRunType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ALL" ->
                        Json.Decode.succeed ALL

                    "LATEST" ->
                        Json.Decode.succeed LATEST

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CheckRunType -> Json.Encode.Value
encode val =
    case val of
        ALL ->
            Json.Encode.string "ALL"

        LATEST ->
            Json.Encode.string "LATEST"


