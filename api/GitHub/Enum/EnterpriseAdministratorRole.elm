module GitHub.Enum.EnterpriseAdministratorRole exposing (EnterpriseAdministratorRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseAdministratorRole
-}


import Json.Decode
import Json.Encode


type EnterpriseAdministratorRole
    = OWNER
    | BILLING_MANAGER


all : List EnterpriseAdministratorRole
all =
    [ OWNER, BILLING_MANAGER ]


decoder : Json.Decode.Decoder EnterpriseAdministratorRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "OWNER" ->
                    Json.Decode.succeed OWNER

                "BILLING_MANAGER" ->
                    Json.Decode.succeed BILLING_MANAGER

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseAdministratorRole -> Json.Encode.Value
encode val =
    case val of
        OWNER ->
            Json.Encode.string "OWNER"

        BILLING_MANAGER ->
            Json.Encode.string "BILLING_MANAGER"


