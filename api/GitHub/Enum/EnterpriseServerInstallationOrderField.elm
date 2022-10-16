module GitHub.Enum.EnterpriseServerInstallationOrderField exposing (EnterpriseServerInstallationOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseServerInstallationOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseServerInstallationOrderField
    = HOST_NAME
    | CUSTOMER_NAME
    | CREATED_AT


all : List EnterpriseServerInstallationOrderField
all =
    [ HOST_NAME, CUSTOMER_NAME, CREATED_AT ]


decoder : Json.Decode.Decoder EnterpriseServerInstallationOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "HOST_NAME" ->
                        Json.Decode.succeed HOST_NAME

                    "CUSTOMER_NAME" ->
                        Json.Decode.succeed CUSTOMER_NAME

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseServerInstallationOrderField -> Json.Encode.Value
encode val =
    case val of
        HOST_NAME ->
            Json.Encode.string "HOST_NAME"

        CUSTOMER_NAME ->
            Json.Encode.string "CUSTOMER_NAME"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


