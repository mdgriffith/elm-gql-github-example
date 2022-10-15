module GitHub.Enum.EnterpriseUserAccountMembershipRole exposing (EnterpriseUserAccountMembershipRole(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseUserAccountMembershipRole
-}


import Json.Decode
import Json.Encode


type EnterpriseUserAccountMembershipRole
    = MEMBER
    | OWNER
    | UNAFFILIATED


list : List EnterpriseUserAccountMembershipRole
list =
    [ MEMBER, OWNER, UNAFFILIATED ]


decoder : Json.Decode.Decoder EnterpriseUserAccountMembershipRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MEMBER" ->
                        Json.Decode.succeed MEMBER

                    "OWNER" ->
                        Json.Decode.succeed OWNER

                    "UNAFFILIATED" ->
                        Json.Decode.succeed UNAFFILIATED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseUserAccountMembershipRole -> Json.Encode.Value
encode val =
    case val of
        MEMBER ->
            Json.Encode.string "MEMBER"

        OWNER ->
            Json.Encode.string "OWNER"

        UNAFFILIATED ->
            Json.Encode.string "UNAFFILIATED"


