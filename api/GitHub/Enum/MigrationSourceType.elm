module GitHub.Enum.MigrationSourceType exposing (MigrationSourceType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, MigrationSourceType
-}


import Json.Decode
import Json.Encode


type MigrationSourceType
    = AZURE_DEVOPS
    | BITBUCKET_SERVER
    | GITHUB_ARCHIVE


list : List MigrationSourceType
list =
    [ AZURE_DEVOPS, BITBUCKET_SERVER, GITHUB_ARCHIVE ]


decoder : Json.Decode.Decoder MigrationSourceType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


