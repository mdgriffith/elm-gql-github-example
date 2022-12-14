module GitHub.Enum.TeamMembershipType exposing (TeamMembershipType(..), all, decoder, encode)

{-| 
@docs encode, decoder, all, TeamMembershipType
-}


import Json.Decode
import Json.Encode


type TeamMembershipType
    = IMMEDIATE
    | CHILD_TEAM
    | ALL


all : List TeamMembershipType
all =
    [ IMMEDIATE, CHILD_TEAM, ALL ]


decoder : Json.Decode.Decoder TeamMembershipType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            case andThenUnpack of
                "IMMEDIATE" ->
                    Json.Decode.succeed IMMEDIATE

                "CHILD_TEAM" ->
                    Json.Decode.succeed CHILD_TEAM

                "ALL" ->
                    Json.Decode.succeed ALL

                _ ->
                    Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : TeamMembershipType -> Json.Encode.Value
encode val =
    case val of
        IMMEDIATE ->
            Json.Encode.string "IMMEDIATE"

        CHILD_TEAM ->
            Json.Encode.string "CHILD_TEAM"

        ALL ->
            Json.Encode.string "ALL"


