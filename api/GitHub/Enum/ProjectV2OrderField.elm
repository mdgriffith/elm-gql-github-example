module GitHub.Enum.ProjectV2OrderField exposing (ProjectV2OrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectV2OrderField
-}


import Json.Decode
import Json.Encode


type ProjectV2OrderField
    = TITLE
    | NUMBER
    | UPDATED_AT
    | CREATED_AT


all : List ProjectV2OrderField
all =
    [ TITLE, NUMBER, UPDATED_AT, CREATED_AT ]


decoder : Json.Decode.Decoder ProjectV2OrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "TITLE" ->
                        Json.Decode.succeed TITLE

                    "NUMBER" ->
                        Json.Decode.succeed NUMBER

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ProjectV2OrderField -> Json.Encode.Value
encode val =
    case val of
        TITLE ->
            Json.Encode.string "TITLE"

        NUMBER ->
            Json.Encode.string "NUMBER"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


