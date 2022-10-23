module GitHub.Enum.RepositoryInvitationOrderField exposing (RepositoryInvitationOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryInvitationOrderField
-}


import Json.Decode
import Json.Encode


type RepositoryInvitationOrderField
    = CREATED_AT


all : List RepositoryInvitationOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder RepositoryInvitationOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "CREATED_AT" ->
                    Json.Decode.succeed CREATED_AT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryInvitationOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


