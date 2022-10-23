module GitHub.Enum.CommentCannotUpdateReason exposing (CommentCannotUpdateReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, CommentCannotUpdateReason
-}


import Json.Decode
import Json.Encode


type CommentCannotUpdateReason
    = ARCHIVED
    | INSUFFICIENT_ACCESS
    | LOCKED
    | LOGIN_REQUIRED
    | MAINTENANCE
    | VERIFIED_EMAIL_REQUIRED
    | DENIED


all : List CommentCannotUpdateReason
all =
    [ ARCHIVED
    , INSUFFICIENT_ACCESS
    , LOCKED
    , LOGIN_REQUIRED
    , MAINTENANCE
    , VERIFIED_EMAIL_REQUIRED
    , DENIED
    ]


decoder : Json.Decode.Decoder CommentCannotUpdateReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ARCHIVED" ->
                    Json.Decode.succeed ARCHIVED

                "INSUFFICIENT_ACCESS" ->
                    Json.Decode.succeed INSUFFICIENT_ACCESS

                "LOCKED" ->
                    Json.Decode.succeed LOCKED

                "LOGIN_REQUIRED" ->
                    Json.Decode.succeed LOGIN_REQUIRED

                "MAINTENANCE" ->
                    Json.Decode.succeed MAINTENANCE

                "VERIFIED_EMAIL_REQUIRED" ->
                    Json.Decode.succeed VERIFIED_EMAIL_REQUIRED

                "DENIED" ->
                    Json.Decode.succeed DENIED

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : CommentCannotUpdateReason -> Json.Encode.Value
encode val =
    case val of
        ARCHIVED ->
            Json.Encode.string "ARCHIVED"

        INSUFFICIENT_ACCESS ->
            Json.Encode.string "INSUFFICIENT_ACCESS"

        LOCKED ->
            Json.Encode.string "LOCKED"

        LOGIN_REQUIRED ->
            Json.Encode.string "LOGIN_REQUIRED"

        MAINTENANCE ->
            Json.Encode.string "MAINTENANCE"

        VERIFIED_EMAIL_REQUIRED ->
            Json.Encode.string "VERIFIED_EMAIL_REQUIRED"

        DENIED ->
            Json.Encode.string "DENIED"


