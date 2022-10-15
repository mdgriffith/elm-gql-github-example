module GitHub.Enum.OrderDirection exposing (OrderDirection(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, OrderDirection
-}


import Json.Decode
import Json.Encode


type OrderDirection
    = ASC
    | DESC


list : List OrderDirection
list =
    [ ASC, DESC ]


decoder : Json.Decode.Decoder OrderDirection
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "ASC" ->
                        Json.Decode.succeed ASC

                    "DESC" ->
                        Json.Decode.succeed DESC

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : OrderDirection -> Json.Encode.Value
encode val =
    case val of
        ASC ->
            Json.Encode.string "ASC"

        DESC ->
            Json.Encode.string "DESC"


