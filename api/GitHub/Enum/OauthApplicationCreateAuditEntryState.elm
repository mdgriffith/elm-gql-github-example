module GitHub.Enum.OauthApplicationCreateAuditEntryState exposing (OauthApplicationCreateAuditEntryState(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OauthApplicationCreateAuditEntryState
-}


import Json.Decode
import Json.Encode


type OauthApplicationCreateAuditEntryState
    = ACTIVE
    | SUSPENDED
    | PENDING_DELETION


list : List OauthApplicationCreateAuditEntryState
list =
    [ ACTIVE, SUSPENDED, PENDING_DELETION ]


decoder : Json.Decode.Decoder OauthApplicationCreateAuditEntryState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ACTIVE" ->
                        Json.Decode.succeed ACTIVE

                    "SUSPENDED" ->
                        Json.Decode.succeed SUSPENDED

                    "PENDING_DELETION" ->
                        Json.Decode.succeed PENDING_DELETION

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OauthApplicationCreateAuditEntryState -> Json.Encode.Value
encode val =
    case val of
        ACTIVE ->
            Json.Encode.string "ACTIVE"

        SUSPENDED ->
            Json.Encode.string "SUSPENDED"

        PENDING_DELETION ->
            Json.Encode.string "PENDING_DELETION"


