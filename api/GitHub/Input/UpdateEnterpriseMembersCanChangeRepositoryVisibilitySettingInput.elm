module GitHub.Input.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput exposing (UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput

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


type alias UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
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
                "UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
    -> UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
        -> UpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
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


