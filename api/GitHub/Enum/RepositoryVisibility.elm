module GitHub.Enum.RepositoryVisibility exposing (RepositoryVisibility(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, RepositoryVisibility
-}


import Json.Decode
import Json.Encode


type RepositoryVisibility
    = PRIVATE
    | PUBLIC
    | INTERNAL


all : List RepositoryVisibility
all =
    [ PRIVATE, PUBLIC, INTERNAL ]


decoder : Json.Decode.Decoder RepositoryVisibility
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PRIVATE" ->
                        Json.Decode.succeed PRIVATE

                    "PUBLIC" ->
                        Json.Decode.succeed PUBLIC

                    "INTERNAL" ->
                        Json.Decode.succeed INTERNAL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : RepositoryVisibility -> Json.Encode.Value
encode val =
    case val of
        PRIVATE ->
            Json.Encode.string "PRIVATE"

        PUBLIC ->
            Json.Encode.string "PUBLIC"

        INTERNAL ->
            Json.Encode.string "INTERNAL"


