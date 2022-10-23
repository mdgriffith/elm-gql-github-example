module GitHub.Enum.OrganizationInvitationType exposing (OrganizationInvitationType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, OrganizationInvitationType
-}


import Json.Decode
import Json.Encode


type OrganizationInvitationType
    = USER
    | EMAIL


all : List OrganizationInvitationType
all =
    [ USER, EMAIL ]


decoder : Json.Decode.Decoder OrganizationInvitationType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


