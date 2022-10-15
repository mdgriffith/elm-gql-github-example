module GitHub.Enum.RepositoryAffiliation exposing (RepositoryAffiliation(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepositoryAffiliation
-}


import Json.Decode
import Json.Encode


type RepositoryAffiliation
    = OWNER
    | COLLABORATOR
    | ORGANIZATION_MEMBER


list : List RepositoryAffiliation
list =
    [ OWNER, COLLABORATOR, ORGANIZATION_MEMBER ]


decoder : Json.Decode.Decoder RepositoryAffiliation
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "OWNER" ->
                        Json.Decode.succeed OWNER

                    "COLLABORATOR" ->
                        Json.Decode.succeed COLLABORATOR

                    "ORGANIZATION_MEMBER" ->
                        Json.Decode.succeed ORGANIZATION_MEMBER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryAffiliation -> Json.Encode.Value
encode val =
    case val of
        OWNER ->
            Json.Encode.string "OWNER"

        COLLABORATOR ->
            Json.Encode.string "COLLABORATOR"

        ORGANIZATION_MEMBER ->
            Json.Encode.string "ORGANIZATION_MEMBER"


