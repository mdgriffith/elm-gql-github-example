module GitHub.Enum.RepoAccessAuditEntryVisibility exposing (RepoAccessAuditEntryVisibility(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepoAccessAuditEntryVisibility
-}


import Json.Decode
import Json.Encode


type RepoAccessAuditEntryVisibility
    = INTERNAL
    | PRIVATE
    | PUBLIC


list : List RepoAccessAuditEntryVisibility
list =
    [ INTERNAL, PRIVATE, PUBLIC ]


decoder : Json.Decode.Decoder RepoAccessAuditEntryVisibility
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


encode : RepoAccessAuditEntryVisibility -> Json.Encode.Value
encode val =
    case val of
        INTERNAL ->
            Json.Encode.string "INTERNAL"

        PRIVATE ->
            Json.Encode.string "PRIVATE"

        PUBLIC ->
            Json.Encode.string "PUBLIC"


