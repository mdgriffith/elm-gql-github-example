module GitHub.Enum.RepositoryMigrationOrderField exposing (RepositoryMigrationOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepositoryMigrationOrderField
-}


import Json.Decode
import Json.Encode


type RepositoryMigrationOrderField
    = CREATED_AT


list : List RepositoryMigrationOrderField
list =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder RepositoryMigrationOrderField
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


encode : RepositoryMigrationOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


