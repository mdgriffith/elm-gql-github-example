module GitHub.Enum.DependencyGraphEcosystem exposing (DependencyGraphEcosystem(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, DependencyGraphEcosystem
-}


import Json.Decode
import Json.Encode


type DependencyGraphEcosystem
    = RUBYGEMS
    | NPM
    | PIP
    | MAVEN
    | NUGET
    | COMPOSER
    | GO
    | ACTIONS
    | RUST
    | PUB


all : List DependencyGraphEcosystem
all =
    [ RUBYGEMS, NPM, PIP, MAVEN, NUGET, COMPOSER, GO, ACTIONS, RUST, PUB ]


decoder : Json.Decode.Decoder DependencyGraphEcosystem
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "RUBYGEMS" ->
                        Json.Decode.succeed RUBYGEMS

                    "NPM" ->
                        Json.Decode.succeed NPM

                    "PIP" ->
                        Json.Decode.succeed PIP

                    "MAVEN" ->
                        Json.Decode.succeed MAVEN

                    "NUGET" ->
                        Json.Decode.succeed NUGET

                    "COMPOSER" ->
                        Json.Decode.succeed COMPOSER

                    "GO" ->
                        Json.Decode.succeed GO

                    "ACTIONS" ->
                        Json.Decode.succeed ACTIONS

                    "RUST" ->
                        Json.Decode.succeed RUST

                    "PUB" ->
                        Json.Decode.succeed PUB

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DependencyGraphEcosystem -> Json.Encode.Value
encode val =
    case val of
        RUBYGEMS ->
            Json.Encode.string "RUBYGEMS"

        NPM ->
            Json.Encode.string "NPM"

        PIP ->
            Json.Encode.string "PIP"

        MAVEN ->
            Json.Encode.string "MAVEN"

        NUGET ->
            Json.Encode.string "NUGET"

        COMPOSER ->
            Json.Encode.string "COMPOSER"

        GO ->
            Json.Encode.string "GO"

        ACTIONS ->
            Json.Encode.string "ACTIONS"

        RUST ->
            Json.Encode.string "RUST"

        PUB ->
            Json.Encode.string "PUB"


