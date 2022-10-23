module GitHub.Enum.MigrationSourceType exposing (MigrationSourceType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, MigrationSourceType
-}


import Json.Decode
import Json.Encode


type MigrationSourceType
    = AZURE_DEVOPS
    | BITBUCKET_SERVER
    | GITHUB_ARCHIVE


all : List MigrationSourceType
all =
    [ AZURE_DEVOPS, BITBUCKET_SERVER, GITHUB_ARCHIVE ]


decoder : Json.Decode.Decoder MigrationSourceType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "AZURE_DEVOPS" ->
                    Json.Decode.succeed AZURE_DEVOPS

                "BITBUCKET_SERVER" ->
                    Json.Decode.succeed BITBUCKET_SERVER

                "GITHUB_ARCHIVE" ->
                    Json.Decode.succeed GITHUB_ARCHIVE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MigrationSourceType -> Json.Encode.Value
encode val =
    case val of
        AZURE_DEVOPS ->
            Json.Encode.string "AZURE_DEVOPS"

        BITBUCKET_SERVER ->
            Json.Encode.string "BITBUCKET_SERVER"

        GITHUB_ARCHIVE ->
            Json.Encode.string "GITHUB_ARCHIVE"


