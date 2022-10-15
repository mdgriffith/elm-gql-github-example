module GitHub.Enum.RepoRemoveMemberAuditEntryVisibility exposing (RepoRemoveMemberAuditEntryVisibility(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepoRemoveMemberAuditEntryVisibility
-}


import Json.Decode
import Json.Encode


type RepoRemoveMemberAuditEntryVisibility
    = INTERNAL
    | PRIVATE
    | PUBLIC


list : List RepoRemoveMemberAuditEntryVisibility
list =
    [ INTERNAL, PRIVATE, PUBLIC ]


decoder : Json.Decode.Decoder RepoRemoveMemberAuditEntryVisibility
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


encode : RepoRemoveMemberAuditEntryVisibility -> Json.Encode.Value
encode val =
    case val of
        INTERNAL ->
            Json.Encode.string "INTERNAL"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        PUBLIC ->
            Json.Encode.string "PUBLIC"


