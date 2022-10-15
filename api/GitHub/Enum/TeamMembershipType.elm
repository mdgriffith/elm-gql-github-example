module GitHub.Enum.TeamMembershipType exposing (TeamMembershipType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, TeamMembershipType
-}


import Json.Decode
import Json.Encode


type TeamMembershipType
    = IMMEDIATE
    | CHILD_TEAM
    | ALL


list : List TeamMembershipType
list =
    [ IMMEDIATE, CHILD_TEAM, ALL ]


decoder : Json.Decode.Decoder TeamMembershipType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
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


