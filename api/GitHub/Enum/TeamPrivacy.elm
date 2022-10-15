module GitHub.Enum.TeamPrivacy exposing (TeamPrivacy(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamPrivacy
-}


import Json.Decode
import Json.Encode


type TeamPrivacy
    = SECRET
    | VISIBLE


list : List TeamPrivacy
list =
    [ SECRET, VISIBLE ]


decoder : Json.Decode.Decoder TeamPrivacy
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "SECRET" ->
                        Json.Decode.succeed SECRET

                    "VISIBLE" ->
                        Json.Decode.succeed VISIBLE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamPrivacy -> Json.Encode.Value
encode val =
    case val of
        SECRET ->
            Json.Encode.string "SECRET"

        VISIBLE ->
            Json.Encode.string "VISIBLE"


