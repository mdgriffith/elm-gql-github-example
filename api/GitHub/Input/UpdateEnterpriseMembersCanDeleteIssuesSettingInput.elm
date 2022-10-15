module GitHub.Input.UpdateEnterpriseMembersCanDeleteIssuesSettingInput exposing (UpdateEnterpriseMembersCanDeleteIssuesSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanDeleteIssuesSettingInput

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


type alias UpdateEnterpriseMembersCanDeleteIssuesSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanDeleteIssuesSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseMembersCanDeleteIssuesSettingInput
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
                "UpdateEnterpriseMembersCanDeleteIssuesSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanDeleteIssuesSettingInput
    -> UpdateEnterpriseMembersCanDeleteIssuesSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanDeleteIssuesSettingInput
        -> UpdateEnterpriseMembersCanDeleteIssuesSettingInput
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


