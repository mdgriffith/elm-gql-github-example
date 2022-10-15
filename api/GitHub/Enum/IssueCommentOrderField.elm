module GitHub.Enum.IssueCommentOrderField exposing (IssueCommentOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, IssueCommentOrderField
-}


import Json.Decode
import Json.Encode


type IssueCommentOrderField
    = UPDATED_AT


list : List IssueCommentOrderField
list =
    [ UPDATED_AT ]


decoder : Json.Decode.Decoder IssueCommentOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : IssueCommentOrderField -> Json.Encode.Value
encode val =
    case val of
        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"


