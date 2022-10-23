module GitHub.Enum.TopicSuggestionDeclineReason exposing (TopicSuggestionDeclineReason(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TopicSuggestionDeclineReason
-}


import Json.Decode
import Json.Encode


type TopicSuggestionDeclineReason
    = NOT_RELEVANT
    | TOO_SPECIFIC
    | PERSONAL_PREFERENCE
    | TOO_GENERAL


all : List TopicSuggestionDeclineReason
all =
    [ NOT_RELEVANT, TOO_SPECIFIC, PERSONAL_PREFERENCE, TOO_GENERAL ]


decoder : Json.Decode.Decoder TopicSuggestionDeclineReason
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "NOT_RELEVANT" ->
                    Json.Decode.succeed NOT_RELEVANT

                "TOO_SPECIFIC" ->
                    Json.Decode.succeed TOO_SPECIFIC

                "PERSONAL_PREFERENCE" ->
                    Json.Decode.succeed PERSONAL_PREFERENCE

                "TOO_GENERAL" ->
                    Json.Decode.succeed TOO_GENERAL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TopicSuggestionDeclineReason -> Json.Encode.Value
encode val =
    case val of
        NOT_RELEVANT ->
            Json.Encode.string "NOT_RELEVANT"

        TOO_SPECIFIC ->
            Json.Encode.string "TOO_SPECIFIC"

        PERSONAL_PREFERENCE ->
            Json.Encode.string "PERSONAL_PREFERENCE"

        TOO_GENERAL ->
            Json.Encode.string "TOO_GENERAL"


