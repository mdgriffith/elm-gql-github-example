module GitHub.Input.UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput exposing (UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput

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


type alias UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
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
                "UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
    -> UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
        -> UpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
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


