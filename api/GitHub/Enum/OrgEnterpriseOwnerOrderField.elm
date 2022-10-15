module GitHub.Enum.OrgEnterpriseOwnerOrderField exposing (OrgEnterpriseOwnerOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrgEnterpriseOwnerOrderField
-}


import Json.Decode
import Json.Encode


type OrgEnterpriseOwnerOrderField
    = LOGIN


list : List OrgEnterpriseOwnerOrderField
list =
    [ LOGIN ]


decoder : Json.Decode.Decoder OrgEnterpriseOwnerOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "LOGIN" ->
                        Json.Decode.succeed LOGIN

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrgEnterpriseOwnerOrderField -> Json.Encode.Value
encode val =
    case val of
        LOGIN ->
            Json.Encode.string "LOGIN"


