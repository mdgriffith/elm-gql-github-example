module GitHub.Enum.TeamOrderField exposing (TeamOrderField(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamOrderField
-}


import Json.Decode
import Json.Encode


type TeamOrderField
    = NAME


list : List TeamOrderField
list =
    [ NAME ]


decoder : Json.Decode.Decoder TeamOrderField
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "NAME" ->
                        Json.Decode.succeed NAME

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamOrderField -> Json.Encode.Value
encode val =
    case val of
        NAME ->
            Json.Encode.string "NAME"


