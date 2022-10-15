module GitHub.Enum.OrganizationInvitationType exposing (OrganizationInvitationType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrganizationInvitationType
-}


import Json.Decode
import Json.Encode


type OrganizationInvitationType
    = USER
    | EMAIL


list : List OrganizationInvitationType
list =
    [ USER, EMAIL ]


decoder : Json.Decode.Decoder OrganizationInvitationType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "USER" ->
                        Json.Decode.succeed USER

                    "EMAIL" ->
                        Json.Decode.succeed EMAIL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrganizationInvitationType -> Json.Encode.Value
encode val =
    case val of
        USER ->
            Json.Encode.string "USER"

        EMAIL ->
            Json.Encode.string "EMAIL"


