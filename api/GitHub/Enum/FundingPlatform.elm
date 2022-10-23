module GitHub.Enum.FundingPlatform exposing (FundingPlatform(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, FundingPlatform
-}


import Json.Decode
import Json.Encode


type FundingPlatform
    = GITHUB
    | PATREON
    | OPEN_COLLECTIVE
    | KO_FI
    | TIDELIFT
    | COMMUNITY_BRIDGE
    | LIBERAPAY
    | ISSUEHUNT
    | OTECHIE
    | LFX_CROWDFUNDING
    | CUSTOM


all : List FundingPlatform
all =
    [ GITHUB
    , PATREON
    , OPEN_COLLECTIVE
    , KO_FI
    , TIDELIFT
    , COMMUNITY_BRIDGE
    , LIBERAPAY
    , ISSUEHUNT
    , OTECHIE
    , LFX_CROWDFUNDING
    , CUSTOM
    ]


decoder : Json.Decode.Decoder FundingPlatform
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "GITHUB" ->
                    Json.Decode.succeed GITHUB

                "PATREON" ->
                    Json.Decode.succeed PATREON

                "OPEN_COLLECTIVE" ->
                    Json.Decode.succeed OPEN_COLLECTIVE

                "KO_FI" ->
                    Json.Decode.succeed KO_FI

                "TIDELIFT" ->
                    Json.Decode.succeed TIDELIFT

                "COMMUNITY_BRIDGE" ->
                    Json.Decode.succeed COMMUNITY_BRIDGE

                "LIBERAPAY" ->
                    Json.Decode.succeed LIBERAPAY

                "ISSUEHUNT" ->
                    Json.Decode.succeed ISSUEHUNT

                "OTECHIE" ->
                    Json.Decode.succeed OTECHIE

                "LFX_CROWDFUNDING" ->
                    Json.Decode.succeed LFX_CROWDFUNDING

                "CUSTOM" ->
                    Json.Decode.succeed CUSTOM

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : FundingPlatform -> Json.Encode.Value
encode val =
    case val of
        GITHUB ->
            Json.Encode.string "GITHUB"

        PATREON ->
            Json.Encode.string "PATREON"

        OPEN_COLLECTIVE ->
            Json.Encode.string "OPEN_COLLECTIVE"

        KO_FI ->
            Json.Encode.string "KO_FI"

        TIDELIFT ->
            Json.Encode.string "TIDELIFT"

        COMMUNITY_BRIDGE ->
            Json.Encode.string "COMMUNITY_BRIDGE"

        LIBERAPAY ->
            Json.Encode.string "LIBERAPAY"

        ISSUEHUNT ->
            Json.Encode.string "ISSUEHUNT"

        OTECHIE ->
            Json.Encode.string "OTECHIE"

        LFX_CROWDFUNDING ->
            Json.Encode.string "LFX_CROWDFUNDING"

        CUSTOM ->
            Json.Encode.string "CUSTOM"


