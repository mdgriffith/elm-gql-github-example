module GitHub.Enum.SponsorshipPrivacy exposing (SponsorshipPrivacy(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, SponsorshipPrivacy
-}


import Json.Decode
import Json.Encode


type SponsorshipPrivacy
    = PUBLIC
    | PRIVATE


all : List SponsorshipPrivacy
all =
    [ PUBLIC, PRIVATE ]


decoder : Json.Decode.Decoder SponsorshipPrivacy
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PUBLIC" ->
                        Json.Decode.succeed PUBLIC

                    "PRIVATE" ->
                        Json.Decode.succeed PRIVATE

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : SponsorshipPrivacy -> Json.Encode.Value
encode val =
    case val of
        PUBLIC ->
            Json.Encode.string "PUBLIC"

        PRIVATE ->
            Json.Encode.string "PRIVATE"


