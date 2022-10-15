module GitHub.Enum.EnterpriseServerUserAccountEmailOrderField exposing (EnterpriseServerUserAccountEmailOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseServerUserAccountEmailOrderField
-}


import Json.Decode
import Json.Encode


type EnterpriseServerUserAccountEmailOrderField
    = EMAIL


list : List EnterpriseServerUserAccountEmailOrderField
list =
    [ EMAIL ]


decoder : Json.Decode.Decoder EnterpriseServerUserAccountEmailOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "EMAIL" ->
                        Json.Decode.succeed EMAIL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseServerUserAccountEmailOrderField -> Json.Encode.Value
encode val =
    case val of
        EMAIL ->
            Json.Encode.string "EMAIL"


