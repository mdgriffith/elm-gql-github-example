module GitHub.Enum.EnterpriseUserAccountMembershipRole exposing (EnterpriseUserAccountMembershipRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, EnterpriseUserAccountMembershipRole
-}


import Json.Decode
import Json.Encode


type EnterpriseUserAccountMembershipRole
    = MEMBER
    | OWNER
    | UNAFFILIATED


all : List EnterpriseUserAccountMembershipRole
all =
    [ MEMBER, OWNER, UNAFFILIATED ]


decoder : Json.Decode.Decoder EnterpriseUserAccountMembershipRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


