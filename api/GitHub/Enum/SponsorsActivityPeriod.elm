module GitHub.Enum.SponsorsActivityPeriod exposing (SponsorsActivityPeriod(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, SponsorsActivityPeriod
-}


import Json.Decode
import Json.Encode


type SponsorsActivityPeriod
    = DAY
    | WEEK
    | MONTH
    | ALL


list : List SponsorsActivityPeriod
list =
    [ DAY, WEEK, MONTH, ALL ]


decoder : Json.Decode.Decoder SponsorsActivityPeriod
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "DAY" ->
                        Json.Decode.succeed DAY

                    "WEEK" ->
                        Json.Decode.succeed WEEK

                    "MONTH" ->
                        Json.Decode.succeed MONTH

                    "ALL" ->
                        Json.Decode.succeed ALL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorsActivityPeriod -> Json.Encode.Value
encode val =
    case val of
        DAY ->
            Json.Encode.string "DAY"

        WEEK ->
            Json.Encode.string "WEEK"

        MONTH ->
            Json.Encode.string "MONTH"

        ALL ->
            Json.Encode.string "ALL"


