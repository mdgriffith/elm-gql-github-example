module GitHub.Enum.TeamDiscussionCommentOrderField exposing (TeamDiscussionCommentOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamDiscussionCommentOrderField
-}


import Json.Decode
import Json.Encode


type TeamDiscussionCommentOrderField
    = NUMBER


all : List TeamDiscussionCommentOrderField
all =
    [ NUMBER ]


decoder : Json.Decode.Decoder TeamDiscussionCommentOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NUMBER" ->
                    Json.Decode.succeed NUMBER

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamDiscussionCommentOrderField -> Json.Encode.Value
encode val =
    case val of
        NUMBER ->
            Json.Encode.string "NUMBER"


