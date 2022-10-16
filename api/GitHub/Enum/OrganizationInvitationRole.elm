module GitHub.Enum.OrganizationInvitationRole exposing (OrganizationInvitationRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrganizationInvitationRole
-}


import Json.Decode
import Json.Encode


type OrganizationInvitationRole
    = DIRECT_MEMBER
    | ADMIN
    | BILLING_MANAGER
    | REINSTATE


all : List OrganizationInvitationRole
all =
    [ DIRECT_MEMBER, ADMIN, BILLING_MANAGER, REINSTATE ]


decoder : Json.Decode.Decoder OrganizationInvitationRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "DIRECT_MEMBER" ->
                        Json.Decode.succeed DIRECT_MEMBER

                    "ADMIN" ->
                        Json.Decode.succeed ADMIN

                    "BILLING_MANAGER" ->
                        Json.Decode.succeed BILLING_MANAGER

                    "REINSTATE" ->
                        Json.Decode.succeed REINSTATE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrganizationInvitationRole -> Json.Encode.Value
encode val =
    case val of
        DIRECT_MEMBER ->
            Json.Encode.string "DIRECT_MEMBER"

        ADMIN ->
            Json.Encode.string "ADMIN"

        BILLING_MANAGER ->
            Json.Encode.string "BILLING_MANAGER"

        REINSTATE ->
            Json.Encode.string "REINSTATE"


