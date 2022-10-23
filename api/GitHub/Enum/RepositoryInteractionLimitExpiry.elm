module GitHub.Enum.RepositoryInteractionLimitExpiry exposing (RepositoryInteractionLimitExpiry(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryInteractionLimitExpiry
-}


import Json.Decode
import Json.Encode


type RepositoryInteractionLimitExpiry
    = ONE_DAY
    | THREE_DAYS
    | ONE_WEEK
    | ONE_MONTH
    | SIX_MONTHS


all : List RepositoryInteractionLimitExpiry
all =
    [ ONE_DAY, THREE_DAYS, ONE_WEEK, ONE_MONTH, SIX_MONTHS ]


decoder : Json.Decode.Decoder RepositoryInteractionLimitExpiry
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "ONE_DAY" ->
                    Json.Decode.succeed ONE_DAY

                "THREE_DAYS" ->
                    Json.Decode.succeed THREE_DAYS

                "ONE_WEEK" ->
                    Json.Decode.succeed ONE_WEEK

                "ONE_MONTH" ->
                    Json.Decode.succeed ONE_MONTH

                "SIX_MONTHS" ->
                    Json.Decode.succeed SIX_MONTHS

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryInteractionLimitExpiry -> Json.Encode.Value
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

        SIX_MONTHS ->
            Json.Encode.string "SIX_MONTHS"


