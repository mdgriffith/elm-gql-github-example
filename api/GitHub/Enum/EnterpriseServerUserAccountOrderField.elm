module GitHub.Enum.EnterpriseServerUserAccountOrderField exposing (EnterpriseServerUserAccountOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseServerUserAccountOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseServerUserAccountOrderField
    = LOGIN
    | REMOTE_CREATED_AT


list : List EnterpriseServerUserAccountOrderField
list =
    [ LOGIN, REMOTE_CREATED_AT ]


decoder : Json.Decode.Decoder EnterpriseServerUserAccountOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    "REMOTE_CREATED_AT" ->
                        Json.Decode.succeed REMOTE_CREATED_AT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseServerUserAccountOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"

        REMOTE_CREATED_AT ->
            Json.Encode.string "REMOTE_CREATED_AT"


