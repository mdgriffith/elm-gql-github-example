module GitHub.Enum.AuditLogOrderField exposing (AuditLogOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, AuditLogOrderField
-}


import Json.Decode
import Json.Encode


type AuditLogOrderField
    = CREATED_AT


all : List AuditLogOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder AuditLogOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : AuditLogOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


