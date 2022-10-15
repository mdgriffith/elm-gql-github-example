module GitHub.Enum.RepositoryInvitationOrderField exposing (RepositoryInvitationOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepositoryInvitationOrderField
-}


import Json.Decode
import Json.Encode


type RepositoryInvitationOrderField
    = CREATED_AT


list : List RepositoryInvitationOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder RepositoryInvitationOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


