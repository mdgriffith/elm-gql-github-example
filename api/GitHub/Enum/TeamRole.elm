module GitHub.Enum.TeamRole exposing (TeamRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamRole
-}


import Json.Decode
import Json.Encode


type TeamRole
    = ADMIN
    | MEMBER


all : List TeamRole
all =
    [ ADMIN, MEMBER ]


decoder : Json.Decode.Decoder TeamRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                "MEMBER" ->
                    Json.Decode.succeed MEMBER

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamRole -> Json.Encode.Value
encode val =
    case val of
        ADMIN ->
            Json.Encode.string "ADMIN"

        MEMBER ->
            Json.Encode.string "MEMBER"


