module GitHub.Enum.ActorType exposing (ActorType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ActorType
-}


import Json.Decode
import Json.Encode


type ActorType
    = USER
    | TEAM


all : List ActorType
all =
    [ USER, TEAM ]


decoder : Json.Decode.Decoder ActorType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "USER" ->
                        Json.Decode.succeed USER

                    "TEAM" ->
                        Json.Decode.succeed TEAM

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ActorType -> Json.Encode.Value
encode val =
    case val of
        USER ->
            Json.Encode.string "USER"

        TEAM ->
            Json.Encode.string "TEAM"


