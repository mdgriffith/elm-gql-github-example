module GitHub.Enum.UserBlockDuration exposing (UserBlockDuration(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, UserBlockDuration
-}


import Json.Decode
import Json.Encode


type UserBlockDuration
    = ONE_DAY
    | THREE_DAYS
    | ONE_WEEK
    | ONE_MONTH
    | PERMANENT


all : List UserBlockDuration
all =
    [ ONE_DAY, THREE_DAYS, ONE_WEEK, ONE_MONTH, PERMANENT ]


decoder : Json.Decode.Decoder UserBlockDuration
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ONE_DAY" ->
                        Json.Decode.succeed ONE_DAY

                    "THREE_DAYS" ->
                        Json.Decode.succeed THREE_DAYS

                    "ONE_WEEK" ->
                        Json.Decode.succeed ONE_WEEK

                    "ONE_MONTH" ->
                        Json.Decode.succeed ONE_MONTH

                    "PERMANENT" ->
                        Json.Decode.succeed PERMANENT

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : UserBlockDuration -> Json.Encode.Value
encode val =
    case val of
        ONE_DAY ->
            Json.Encode.string "ONE_DAY"

        THREE_DAYS ->
            Json.Encode.string "THREE_DAYS"

        ONE_WEEK ->
            Json.Encode.string "ONE_WEEK"

        ONE_MONTH ->
            Json.Encode.string "ONE_MONTH"

        PERMANENT ->
            Json.Encode.string "PERMANENT"


