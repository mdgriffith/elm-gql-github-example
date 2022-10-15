module GitHub.Enum.GistPrivacy exposing (GistPrivacy(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, GistPrivacy
-}


import Json.Decode
import Json.Encode


type GistPrivacy
    = PUBLIC
    | SECRET
    | ALL


list : List GistPrivacy
list =
    [ PUBLIC, SECRET, ALL ]


decoder : Json.Decode.Decoder GistPrivacy
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "PUBLIC" ->
                        Json.Decode.succeed PUBLIC

                    "SECRET" ->
                        Json.Decode.succeed SECRET

                    "ALL" ->
                        Json.Decode.succeed ALL

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : GistPrivacy -> Json.Encode.Value
encode val =
    case val of
        PUBLIC ->
            Json.Encode.string "PUBLIC"

        SECRET ->
            Json.Encode.string "SECRET"

        ALL ->
            Json.Encode.string "ALL"


