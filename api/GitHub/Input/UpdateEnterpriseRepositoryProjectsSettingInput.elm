module GitHub.Input.UpdateEnterpriseRepositoryProjectsSettingInput exposing (UpdateEnterpriseRepositoryProjectsSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseRepositoryProjectsSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseEnabledDisabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseRepositoryProjectsSettingInput =
    GitHub.Input.UpdateEnterpriseRepositoryProjectsSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseRepositoryProjectsSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseEnabledDisabledSettingValue!"
        (GitHub.Enum.EnterpriseEnabledDisabledSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "UpdateEnterpriseRepositoryProjectsSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseRepositoryProjectsSettingInput
    -> UpdateEnterpriseRepositoryProjectsSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseRepositoryProjectsSettingInput
        -> UpdateEnterpriseRepositoryProjectsSettingInput
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


