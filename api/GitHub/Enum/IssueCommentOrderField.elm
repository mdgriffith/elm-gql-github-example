module GitHub.Enum.IssueCommentOrderField exposing (IssueCommentOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, IssueCommentOrderField
-}


import Json.Decode
import Json.Encode


type IssueCommentOrderField
    = UPDATED_AT


all : List IssueCommentOrderField
all =
    [ UPDATED_AT ]


decoder : Json.Decode.Decoder IssueCommentOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


