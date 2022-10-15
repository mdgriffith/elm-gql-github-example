module GitHub.Enum.ContributionLevel exposing (ContributionLevel(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, ContributionLevel
-}


import Json.Decode
import Json.Encode


type ContributionLevel
    = NONE
    | FIRST_QUARTILE
    | SECOND_QUARTILE
    | THIRD_QUARTILE
    | FOURTH_QUARTILE


list : List ContributionLevel
list =
    [ NONE, FIRST_QUARTILE, SECOND_QUARTILE, THIRD_QUARTILE, FOURTH_QUARTILE ]


decoder : Json.Decode.Decoder ContributionLevel
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


