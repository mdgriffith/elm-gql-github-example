module GitHub.Enum.PackageType exposing (PackageType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, PackageType
-}


import Json.Decode
import Json.Encode


type PackageType
    = NPM
    | RUBYGEMS
    | MAVEN
    | DOCKER
    | DEBIAN
    | NUGET
    | PYPI


all : List PackageType
all =
    [ NPM, RUBYGEMS, MAVEN, DOCKER, DEBIAN, NUGET, PYPI ]


decoder : Json.Decode.Decoder PackageType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "NPM" ->
                        Json.Decode.succeed NPM

                    "RUBYGEMS" ->
                        Json.Decode.succeed RUBYGEMS

                    "MAVEN" ->
                        Json.Decode.succeed MAVEN

                    "DOCKER" ->
                        Json.Decode.succeed DOCKER

                    "DEBIAN" ->
                        Json.Decode.succeed DEBIAN

                    "NUGET" ->
                        Json.Decode.succeed NUGET

                    "PYPI" ->
                        Json.Decode.succeed PYPI

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : PackageType -> Json.Encode.Value
encode val =
    case val of
        NPM ->
            Json.Encode.string "NPM"

        RUBYGEMS ->
            Json.Encode.string "RUBYGEMS"

        MAVEN ->
            Json.Encode.string "MAVEN"

        DOCKER ->
            Json.Encode.string "DOCKER"

        DEBIAN ->
            Json.Encode.string "DEBIAN"

        NUGET ->
            Json.Encode.string "NUGET"

        PYPI ->
            Json.Encode.string "PYPI"


