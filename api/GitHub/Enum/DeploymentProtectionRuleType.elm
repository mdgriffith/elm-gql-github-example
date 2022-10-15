module GitHub.Enum.DeploymentProtectionRuleType exposing (DeploymentProtectionRuleType(..), decoder, encode, list)

{-| 
@docs encode, decoder, list, DeploymentProtectionRuleType
-}


import Json.Decode
import Json.Encode


type DeploymentProtectionRuleType
    = REQUIRED_REVIEWERS
    | WAIT_TIMER


list : List DeploymentProtectionRuleType
list =
    [ REQUIRED_REVIEWERS, WAIT_TIMER ]


decoder : Json.Decode.Decoder DeploymentProtectionRuleType
decoder =
    Json.Decode.andThen
        (\andThenUnpack ->
            \string ->
                case string of
                    "REQUIRED_REVIEWERS" ->
                        Json.Decode.succeed REQUIRED_REVIEWERS

                    "WAIT_TIMER" ->
                        Json.Decode.succeed WAIT_TIMER

                    _ ->
                        Json.Decode.fail "Invalid type"
        )
        Json.Decode.string


encode : DeploymentProtectionRuleType -> Json.Encode.Value
encode val =
    case val of
        REQUIRED_REVIEWERS ->
            Json.Encode.string "REQUIRED_REVIEWERS"

        WAIT_TIMER ->
            Json.Encode.string "WAIT_TIMER"


