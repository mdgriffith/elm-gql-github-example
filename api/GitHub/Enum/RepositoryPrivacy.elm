module GitHub.Enum.RepositoryPrivacy exposing (RepositoryPrivacy(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryPrivacy
-}


import Json.Decode
import Json.Encode


type RepositoryPrivacy
    = PUBLIC
    | PRIVATE


all : List RepositoryPrivacy
all =
    [ PUBLIC, PRIVATE ]


decoder : Json.Decode.Decoder RepositoryPrivacy
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


encode : RepositoryPrivacy -> Json.Encode.Value
encode val =
    case val of
        PUBLIC ->
            Json.Encode.string "PUBLIC"

        PRIVATE ->
            Json.Encode.string "PRIVATE"


