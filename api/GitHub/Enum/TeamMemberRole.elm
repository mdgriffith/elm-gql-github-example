module GitHub.Enum.TeamMemberRole exposing (TeamMemberRole(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamMemberRole
-}


import Json.Decode
import Json.Encode


type TeamMemberRole
    = MAINTAINER
    | MEMBER


list : List TeamMemberRole
list =
    [ MAINTAINER, MEMBER ]


decoder : Json.Decode.Decoder TeamMemberRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "MAINTAINER" ->
                        Json.Decode.succeed MAINTAINER

                    "MEMBER" ->
                        Json.Decode.succeed MEMBER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamMemberRole -> Json.Encode.Value
encode val =
    case val of
        MAINTAINER ->
            Json.Encode.string "MAINTAINER"

        MEMBER ->
            Json.Encode.string "MEMBER"


