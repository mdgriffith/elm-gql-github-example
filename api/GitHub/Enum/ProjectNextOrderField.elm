module GitHub.Enum.ProjectNextOrderField exposing (ProjectNextOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ProjectNextOrderField
-}


import Json.Decode
import Json.Encode


type ProjectNextOrderField
    = TITLE
    | NUMBER
    | UPDATED_AT
    | CREATED_AT


all : List ProjectNextOrderField
all =
    [ TITLE, NUMBER, UPDATED_AT, CREATED_AT ]


decoder : Json.Decode.Decoder ProjectNextOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


encode : ProjectNextOrderField -> Json.Encode.Value
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


