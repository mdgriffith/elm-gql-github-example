module GitHub.Enum.DefaultRepositoryPermissionField exposing (DefaultRepositoryPermissionField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DefaultRepositoryPermissionField
-}


import Json.Decode
import Json.Encode


type DefaultRepositoryPermissionField
    = NONE
    | READ
    | WRITE
    | ADMIN


all : List DefaultRepositoryPermissionField
all =
    [ NONE, READ, WRITE, ADMIN ]


decoder : Json.Decode.Decoder DefaultRepositoryPermissionField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NONE" ->
                    Json.Decode.succeed NONE

                "READ" ->
                    Json.Decode.succeed READ

                "WRITE" ->
                    Json.Decode.succeed WRITE

                "ADMIN" ->
                    Json.Decode.succeed ADMIN

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DefaultRepositoryPermissionField -> Json.Encode.Value
encode val =
    case val of
        NONE ->
            Json.Encode.string "NONE"

        READ ->
            Json.Encode.string "READ"

        WRITE ->
            Json.Encode.string "WRITE"

        ADMIN ->
            Json.Encode.string "ADMIN"


