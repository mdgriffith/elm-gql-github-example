module GitHub.Enum.RepositoryPermission exposing (RepositoryPermission(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryPermission
-}


import Json.Decode
import Json.Encode


type RepositoryPermission
    = ADMIN
    | MAINTAIN
    | WRITE
    | TRIAGE
    | READ


all : List RepositoryPermission
all =
    [ ADMIN, MAINTAIN, WRITE, TRIAGE, READ ]


decoder : Json.Decode.Decoder RepositoryPermission
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                "MAINTAIN" ->
                    Json.Decode.succeed MAINTAIN

                "WRITE" ->
                    Json.Decode.succeed WRITE

                "TRIAGE" ->
                    Json.Decode.succeed TRIAGE

                "READ" ->
                    Json.Decode.succeed READ

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryPermission -> Json.Encode.Value
encode val =
    case val of
        ADMIN ->
            Json.Encode.string "ADMIN"

        MAINTAIN ->
            Json.Encode.string "MAINTAIN"

        WRITE ->
            Json.Encode.string "WRITE"

        TRIAGE ->
            Json.Encode.string "TRIAGE"

        READ ->
            Json.Encode.string "READ"


