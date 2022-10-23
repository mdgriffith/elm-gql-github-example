module GitHub.Enum.RepoAddMemberAuditEntryVisibility exposing (RepoAddMemberAuditEntryVisibility(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepoAddMemberAuditEntryVisibility
-}


import Json.Decode
import Json.Encode


type RepoAddMemberAuditEntryVisibility
    = INTERNAL
    | PRIVATE
    | PUBLIC


all : List RepoAddMemberAuditEntryVisibility
all =
    [ INTERNAL, PRIVATE, PUBLIC ]


decoder : Json.Decode.Decoder RepoAddMemberAuditEntryVisibility
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


encode : RepoAddMemberAuditEntryVisibility -> Json.Encode.Value
encode val =
    case val of
        INTERNAL ->
            Json.Encode.string "INTERNAL"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        PUBLIC ->
            Json.Encode.string "PUBLIC"


