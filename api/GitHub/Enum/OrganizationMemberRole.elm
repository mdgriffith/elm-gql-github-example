module GitHub.Enum.OrganizationMemberRole exposing (OrganizationMemberRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrganizationMemberRole
-}


import Json.Decode
import Json.Encode


type OrganizationMemberRole
    = MEMBER
    | ADMIN


all : List OrganizationMemberRole
all =
    [ MEMBER, ADMIN ]


decoder : Json.Decode.Decoder OrganizationMemberRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MEMBER" ->
                        Json.Decode.succeed MEMBER

                    "ADMIN" ->
                        Json.Decode.succeed ADMIN

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrganizationMemberRole -> Json.Encode.Value
encode val =
    case val of
        MEMBER ->
            Json.Encode.string "MEMBER"

        ADMIN ->
            Json.Encode.string "ADMIN"


