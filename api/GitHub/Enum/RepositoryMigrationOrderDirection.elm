module GitHub.Enum.RepositoryMigrationOrderDirection exposing (RepositoryMigrationOrderDirection(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, RepositoryMigrationOrderDirection
-}


import Json.Decode
import Json.Encode


type RepositoryMigrationOrderDirection
    = ASC
    | DESC


list : List RepositoryMigrationOrderDirection
list =
    [ ASC, DESC ]


decoder : Json.Decode.Decoder RepositoryMigrationOrderDirection
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ASC" ->
                        Json.Decode.succeed ASC

                    "DESC" ->
                        Json.Decode.succeed DESC

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryMigrationOrderDirection -> Json.Encode.Value
encode val =
    case val of
        ASC ->
            Json.Encode.string "ASC"

        DESC ->
            Json.Encode.string "DESC"


