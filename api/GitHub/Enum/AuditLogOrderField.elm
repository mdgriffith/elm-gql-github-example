module GitHub.Enum.AuditLogOrderField exposing (AuditLogOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, AuditLogOrderField
-}


import Json.Decode
import Json.Encode


type AuditLogOrderField
    = CREATED_AT


list : List AuditLogOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder AuditLogOrderField
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


encode : AuditLogOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


