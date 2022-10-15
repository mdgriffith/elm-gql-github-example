module GitHub.Input.UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput exposing (UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput

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


type alias UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput
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
                "UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput
    -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput
        -> UpdateEnterpriseMembersCanInviteCollaboratorsSettingInput
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


