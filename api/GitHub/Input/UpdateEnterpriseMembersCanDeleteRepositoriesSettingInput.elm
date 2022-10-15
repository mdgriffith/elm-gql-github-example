module GitHub.Input.UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput exposing (UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput

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


type alias UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput
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
                "UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput
    -> UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput
        -> UpdateEnterpriseMembersCanDeleteRepositoriesSettingInput
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


