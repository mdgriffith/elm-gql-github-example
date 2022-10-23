module GitHub.Enum.TeamMemberRole exposing (TeamMemberRole(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamMemberRole
-}


import Json.Decode
import Json.Encode


type TeamMemberRole
    = MAINTAINER
    | MEMBER


all : List TeamMemberRole
all =
    [ MAINTAINER, MEMBER ]


decoder : Json.Decode.Decoder TeamMemberRole
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
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


