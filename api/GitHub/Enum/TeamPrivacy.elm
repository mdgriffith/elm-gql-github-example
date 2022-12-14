module GitHub.Enum.TeamPrivacy exposing (TeamPrivacy(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamPrivacy
-}


import Json.Decode
import Json.Encode


type TeamPrivacy
    = SECRET
    | VISIBLE


all : List TeamPrivacy
all =
    [ SECRET, VISIBLE ]


decoder : Json.Decode.Decoder TeamPrivacy
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


