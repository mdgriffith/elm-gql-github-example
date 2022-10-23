module GitHub.Enum.RepositoryLockReason exposing (RepositoryLockReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryLockReason
-}


import Json.Decode
import Json.Encode


type RepositoryLockReason
    = MOVING
    | BILLING
    | RENAME
    | MIGRATING


all : List RepositoryLockReason
all =
    [ MOVING, BILLING, RENAME, MIGRATING ]


decoder : Json.Decode.Decoder RepositoryLockReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "MOVING" ->
                    Json.Decode.succeed MOVING

                "BILLING" ->
                    Json.Decode.succeed BILLING

                "RENAME" ->
                    Json.Decode.succeed RENAME

                "MIGRATING" ->
                    Json.Decode.succeed MIGRATING

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryLockReason -> Json.Encode.Value
encode val =
    case val of
        MOVING ->
            Json.Encode.string "MOVING"

        BILLING ->
            Json.Encode.string "BILLING"

        RENAME ->
            Json.Encode.string "RENAME"

        MIGRATING ->
            Json.Encode.string "MIGRATING"


