module GitHub.Enum.MilestoneOrderField exposing (MilestoneOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, MilestoneOrderField
-}


import Json.Decode
import Json.Encode


type MilestoneOrderField
    = DUE_DATE
    | CREATED_AT
    | UPDATED_AT
    | NUMBER


list : List MilestoneOrderField
list =
    [ DUE_DATE, CREATED_AT, UPDATED_AT, NUMBER ]


decoder : Json.Decode.Decoder MilestoneOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "DUE_DATE" ->
                        Json.Decode.succeed DUE_DATE

                    "CREATED_AT" ->
                        Json.Decode.succeed CREATED_AT

                    "UPDATED_AT" ->
                        Json.Decode.succeed UPDATED_AT

                    "NUMBER" ->
                        Json.Decode.succeed NUMBER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : MilestoneOrderField -> Json.Encode.Value
encode val =
    case val of
        DUE_DATE ->
            Json.Encode.string "DUE_DATE"

        CREATED_AT ->
            Json.Encode.string "CREATED_AT"

        UPDATED_AT ->
            Json.Encode.string "UPDATED_AT"

        NUMBER ->
            Json.Encode.string "NUMBER"


