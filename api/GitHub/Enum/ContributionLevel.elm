module GitHub.Enum.ContributionLevel exposing (ContributionLevel(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, ContributionLevel
-}


import Json.Decode
import Json.Encode


type ContributionLevel
    = NONE
    | FIRST_QUARTILE
    | SECOND_QUARTILE
    | THIRD_QUARTILE
    | FOURTH_QUARTILE


all : List ContributionLevel
all =
    [ NONE, FIRST_QUARTILE, SECOND_QUARTILE, THIRD_QUARTILE, FOURTH_QUARTILE ]


decoder : Json.Decode.Decoder ContributionLevel
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NONE" ->
                    Json.Decode.succeed NONE

                "FIRST_QUARTILE" ->
                    Json.Decode.succeed FIRST_QUARTILE

                "SECOND_QUARTILE" ->
                    Json.Decode.succeed SECOND_QUARTILE

                "THIRD_QUARTILE" ->
                    Json.Decode.succeed THIRD_QUARTILE

                "FOURTH_QUARTILE" ->
                    Json.Decode.succeed FOURTH_QUARTILE

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : ContributionLevel -> Json.Encode.Value
encode val =
    case val of
        NONE ->
            Json.Encode.string "NONE"

        FIRST_QUARTILE ->
            Json.Encode.string "FIRST_QUARTILE"

        SECOND_QUARTILE ->
            Json.Encode.string "SECOND_QUARTILE"

        THIRD_QUARTILE ->
            Json.Encode.string "THIRD_QUARTILE"

        FOURTH_QUARTILE ->
            Json.Encode.string "FOURTH_QUARTILE"


