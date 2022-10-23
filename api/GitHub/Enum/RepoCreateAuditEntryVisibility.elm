module GitHub.Enum.RepoCreateAuditEntryVisibility exposing (RepoCreateAuditEntryVisibility(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepoCreateAuditEntryVisibility
-}


import Json.Decode
import Json.Encode


type RepoCreateAuditEntryVisibility
    = INTERNAL
    | PRIVATE
    | PUBLIC


all : List RepoCreateAuditEntryVisibility
all =
    [ INTERNAL, PRIVATE, PUBLIC ]


decoder : Json.Decode.Decoder RepoCreateAuditEntryVisibility
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "INTERNAL" ->
                    Json.Decode.succeed INTERNAL

                "PRIVATE" ->
                    Json.Decode.succeed PRIVATE

                "PUBLIC" ->
                    Json.Decode.succeed PUBLIC

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepoCreateAuditEntryVisibility -> Json.Encode.Value
encode val =
    case val of
        INTERNAL ->
            Json.Encode.string "INTERNAL"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        PUBLIC ->
            Json.Encode.string "PUBLIC"


