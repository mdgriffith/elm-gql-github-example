module GitHub.Input.CheckSuiteAutoTriggerPreference exposing (CheckSuiteAutoTriggerPreference, input)

{-| 
## Creating an input

@docs input, CheckSuiteAutoTriggerPreference
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CheckSuiteAutoTriggerPreference =
    GitHub.Input.CheckSuiteAutoTriggerPreference


input : { appId : GitHub.Id, setting : Bool } -> CheckSuiteAutoTriggerPreference
input requiredArgs =
    GraphQL.Engine.addField
        "setting"
        "Boolean!"
        (Json.Encode.bool requiredArgs.setting)
        (GraphQL.Engine.addField
            "appId"
            "ID!"
            (GitHub.id.encode requiredArgs.appId)
            (GraphQL.Engine.inputObject "CheckSuiteAutoTriggerPreference")
        )


