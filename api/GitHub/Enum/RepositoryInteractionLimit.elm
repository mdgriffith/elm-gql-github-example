module GitHub.Enum.RepositoryInteractionLimit exposing (RepositoryInteractionLimit(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryInteractionLimit
-}


import Json.Decode
import Json.Encode


type RepositoryInteractionLimit
    = EXISTING_USERS
    | CONTRIBUTORS_ONLY
    | COLLABORATORS_ONLY
    | NO_LIMIT


all : List RepositoryInteractionLimit
all =
    [ EXISTING_USERS, CONTRIBUTORS_ONLY, COLLABORATORS_ONLY, NO_LIMIT ]


decoder : Json.Decode.Decoder RepositoryInteractionLimit
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "EXISTING_USERS" ->
                    Json.Decode.succeed EXISTING_USERS

                "CONTRIBUTORS_ONLY" ->
                    Json.Decode.succeed CONTRIBUTORS_ONLY

                "COLLABORATORS_ONLY" ->
                    Json.Decode.succeed COLLABORATORS_ONLY

                "NO_LIMIT" ->
                    Json.Decode.succeed NO_LIMIT

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryInteractionLimit -> Json.Encode.Value
encode val =
    case val of
        EXISTING_USERS ->
            Json.Encode.string "EXISTING_USERS"

        CONTRIBUTORS_ONLY ->
            Json.Encode.string "CONTRIBUTORS_ONLY"

        COLLABORATORS_ONLY ->
            Json.Encode.string "COLLABORATORS_ONLY"

        NO_LIMIT ->
            Json.Encode.string "NO_LIMIT"


