module GitHub.Enum.RepositoryMigrationOrderField exposing (RepositoryMigrationOrderField(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryMigrationOrderField
-}


import Json.Decode
import Json.Encode


type RepositoryMigrationOrderField
    = CREATED_AT


all : List RepositoryMigrationOrderField
all =
    [ CREATED_AT ]


decoder : Json.Decode.Decoder RepositoryMigrationOrderField
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


encode : RepositoryMigrationOrderField -> Json.Encode.Value
encode val =
    case val of
        CREATED_AT ->
            Json.Encode.string "CREATED_AT"


