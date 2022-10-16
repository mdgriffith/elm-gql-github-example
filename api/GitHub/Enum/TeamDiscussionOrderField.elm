module GitHub.Enum.TeamDiscussionOrderField exposing (TeamDiscussionOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamDiscussionOrderField
-}


import Json.Decode
import Json.Encode


type TeamDiscussionOrderField
    = CREATED_AT


all : List TeamDiscussionOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder TeamDiscussionOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamDiscussionOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


