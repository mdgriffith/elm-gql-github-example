module GitHub.Enum.SecurityAdvisoryEcosystem exposing (SecurityAdvisoryEcosystem(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SecurityAdvisoryEcosystem
-}


import Json.Decode
import Json.Encode


type SecurityAdvisoryEcosystem
    = COMPOSER
    | ERLANG
    | ACTIONS
    | GO
    | MAVEN
    | NPM
    | NUGET
    | PIP
    | PUB
    | RUBYGEMS
    | RUST


all : List SecurityAdvisoryEcosystem
all =
    [ COMPOSER
    , ERLANG
    , ACTIONS
    , GO
    , MAVEN
    , NPM
    , NUGET
    , PIP
    , PUB
    , RUBYGEMS
    , RUST
    ]


decoder : Json.Decode.Decoder SecurityAdvisoryEcosystem
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "COMPOSER" ->
                        Json.Decode.succeed COMPOSER

                    "ERLANG" ->
                        Json.Decode.succeed ERLANG

                    "ACTIONS" ->
                        Json.Decode.succeed ACTIONS

                    "GO" ->
                        Json.Decode.succeed GO

                    "MAVEN" ->
                        Json.Decode.succeed MAVEN

                    "NPM" ->
                        Json.Decode.succeed NPM

                    "NUGET" ->
                        Json.Decode.succeed NUGET

                    "PIP" ->
                        Json.Decode.succeed PIP

                    "PUB" ->
                        Json.Decode.succeed PUB

                    "RUBYGEMS" ->
                        Json.Decode.succeed RUBYGEMS

                    "RUST" ->
                        Json.Decode.succeed RUST

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SecurityAdvisoryEcosystem -> Json.Encode.Value
encode val =
    case val of
        COMPOSER ->
            Json.Encode.string "COMPOSER"

        ERLANG ->
            Json.Encode.string "ERLANG"

        ACTIONS ->
            Json.Encode.string "ACTIONS"

        GO ->
            Json.Encode.string "GO"

        MAVEN ->
            Json.Encode.string "MAVEN"

        NPM ->
            Json.Encode.string "NPM"

        NUGET ->
            Json.Encode.string "NUGET"

        PIP ->
            Json.Encode.string "PIP"

        PUB ->
            Json.Encode.string "PUB"

        RUBYGEMS ->
            Json.Encode.string "RUBYGEMS"

        RUST ->
            Json.Encode.string "RUST"


