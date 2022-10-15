module GitHub.Enum.EnterpriseAllowPrivateRepositoryForkingPolicyValue exposing (EnterpriseAllowPrivateRepositoryForkingPolicyValue(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, EnterpriseAllowPrivateRepositoryForkingPolicyValue
-}


import Json.Decode
import Json.Encode


type EnterpriseAllowPrivateRepositoryForkingPolicyValue
    = ENTERPRISE_ORGANIZATIONS
    | SAME_ORGANIZATION
    | SAME_ORGANIZATION_USER_ACCOUNTS
    | ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS
    | USER_ACCOUNTS
    | EVERYWHERE


list : List EnterpriseAllowPrivateRepositoryForkingPolicyValue
list =
    [ ENTERPRISE_ORGANIZATIONS
    , SAME_ORGANIZATION
    , SAME_ORGANIZATION_USER_ACCOUNTS
    , ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS
    , USER_ACCOUNTS
    , EVERYWHERE
    ]


decoder : Json.Decode.Decoder EnterpriseAllowPrivateRepositoryForkingPolicyValue
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ENTERPRISE_ORGANIZATIONS" ->
                        Json.Decode.succeed ENTERPRISE_ORGANIZATIONS

                    "SAME_ORGANIZATION" ->
                        Json.Decode.succeed SAME_ORGANIZATION

                    "SAME_ORGANIZATION_USER_ACCOUNTS" ->
                        Json.Decode.succeed SAME_ORGANIZATION_USER_ACCOUNTS

                    "ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS" ->
                        Json.Decode.succeed
                            ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS

                    "USER_ACCOUNTS" ->
                        Json.Decode.succeed USER_ACCOUNTS

                    "EVERYWHERE" ->
                        Json.Decode.succeed EVERYWHERE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : EnterpriseAllowPrivateRepositoryForkingPolicyValue -> Json.Encode.Value
encode val =
    case val of
        ENTERPRISE_ORGANIZATIONS ->
            Json.Encode.string "ENTERPRISE_ORGANIZATIONS"

        SAME_ORGANIZATION ->
            Json.Encode.string "SAME_ORGANIZATION"

        SAME_ORGANIZATION_USER_ACCOUNTS ->
            Json.Encode.string "SAME_ORGANIZATION_USER_ACCOUNTS"

        ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS ->
            Json.Encode.string "ENTERPRISE_ORGANIZATIONS_USER_ACCOUNTS"

        USER_ACCOUNTS ->
            Json.Encode.string "USER_ACCOUNTS"

        EVERYWHERE ->
            Json.Encode.string "EVERYWHERE"


