module GitHub.Enum.EnterpriseServerUserAccountsUploadOrderField exposing (EnterpriseServerUserAccountsUploadOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseServerUserAccountsUploadOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseServerUserAccountsUploadOrderField
    = CREATED_AT


all : List EnterpriseServerUserAccountsUploadOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder EnterpriseServerUserAccountsUploadOrderField
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


encode : EnterpriseServerUserAccountsUploadOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


