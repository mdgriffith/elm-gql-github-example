module GitHub.Input.UpdateCheckSuitePreferencesInput exposing (UpdateCheckSuitePreferencesInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateCheckSuitePreferencesInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias UpdateCheckSuitePreferencesInput =
    GitHub.Input.UpdateCheckSuitePreferencesInput


input :
    { repositoryId : GitHub.Id
    , autoTriggerPreferences : List GitHub.Input.CheckSuiteAutoTriggerPreference
    }
    -> UpdateCheckSuitePreferencesInput
input requiredArgs =
    GraphQL.Engine.addField
        "autoTriggerPreferences"
        "[CheckSuiteAutoTriggerPreference!]!"
        (Json.Encode.list
            GraphQL.Engine.encodeInputObjectAsJson
            requiredArgs.autoTriggerPreferences
        )
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "UpdateCheckSuitePreferencesInput")
        )


clientMutationId :
    String
    -> UpdateCheckSuitePreferencesInput
    -> UpdateCheckSuitePreferencesInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateCheckSuitePreferencesInput -> UpdateCheckSuitePreferencesInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


