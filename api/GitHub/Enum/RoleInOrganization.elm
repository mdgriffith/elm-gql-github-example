module GitHub.Enum.RoleInOrganization exposing (RoleInOrganization(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RoleInOrganization
-}


import Json.Decode
import Json.Encode


type RoleInOrganization
    = OWNER
    | DIRECT_MEMBER
    | UNAFFILIATED


all : List RoleInOrganization
all =
    [ OWNER, DIRECT_MEMBER, UNAFFILIATED ]


decoder : Json.Decode.Decoder RoleInOrganization
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OWNER" ->
                        Json.Decode.succeed OWNER

                    "DIRECT_MEMBER" ->
                        Json.Decode.succeed DIRECT_MEMBER

                    "UNAFFILIATED" ->
                        Json.Decode.succeed UNAFFILIATED

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RoleInOrganization -> Json.Encode.Value
encode val =
    case val of
        OWNER ->
            Json.Encode.string "OWNER"

        DIRECT_MEMBER ->
            Json.Encode.string "DIRECT_MEMBER"

        UNAFFILIATED ->
            Json.Encode.string "UNAFFILIATED"


