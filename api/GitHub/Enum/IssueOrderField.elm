module GitHub.Enum.IssueOrderField exposing (IssueOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueOrderField
-}


import Json.Decode
import Json.Encode


type IssueOrderField
    = CREATED_AT
    | UPDATED_AT
    | COMMENTS


all : List IssueOrderField
all =
    [ CREATED_AT, UPDATED_AT, COMMENTS ]


decoder : Json.Decode.Decoder IssueOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    "COMMENTS" ->
                        Json.Decode.succeed COMMENTS

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IssueOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"

        COMMENTS ->
            Json.Encode.string "COMMENTS"


