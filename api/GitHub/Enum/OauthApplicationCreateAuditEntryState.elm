module GitHub.Enum.OauthApplicationCreateAuditEntryState exposing (OauthApplicationCreateAuditEntryState(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OauthApplicationCreateAuditEntryState
-}


import Json.Decode
import Json.Encode


type OauthApplicationCreateAuditEntryState
    = ACTIVE
    | SUSPENDED
    | PENDING_DELETION


all : List OauthApplicationCreateAuditEntryState
all =
    [ ACTIVE, SUSPENDED, PENDING_DELETION ]


decoder : Json.Decode.Decoder OauthApplicationCreateAuditEntryState
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


