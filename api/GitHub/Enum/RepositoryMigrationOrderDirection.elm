module GitHub.Enum.RepositoryMigrationOrderDirection exposing (RepositoryMigrationOrderDirection(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryMigrationOrderDirection
-}


import Json.Decode
import Json.Encode


type RepositoryMigrationOrderDirection
    = ASC
    | DESC


all : List RepositoryMigrationOrderDirection
all =
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


