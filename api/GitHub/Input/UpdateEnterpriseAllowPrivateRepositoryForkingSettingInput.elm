module GitHub.Input.UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput exposing (UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput, clientMutationId, input, null, policyValue)

{-| 
## Creating an input

@docs input, UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, policyValue
-}


import GitHub
import GitHub.Enum.EnterpriseAllowPrivateRepositoryForkingPolicyValue
import GitHub.Enum.EnterpriseEnabledDisabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput =
    GitHub.Input.UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledDisabledSettingValue.EnterpriseEnabledDisabledSettingValue
    }
    -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
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
                "UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput"
            )
        )


policyValue :
    GitHub.Enum.EnterpriseAllowPrivateRepositoryForkingPolicyValue.EnterpriseAllowPrivateRepositoryForkingPolicyValue
    -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
    -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
policyValue newArg_ inputObj_ =
    GraphQL.Engine.addField
        "policyValue"
        "EnterpriseAllowPrivateRepositoryForkingPolicyValue"
        (GitHub.Enum.EnterpriseAllowPrivateRepositoryForkingPolicyValue.encode
            newArg_
        )
        inputObj_


clientMutationId :
    String
    -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
    -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { policyValue :
        UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
        -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
    , clientMutationId :
        UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
        -> UpdateEnterpriseAllowPrivateRepositoryForkingSettingInput
    }
null =
    { policyValue =
        \inputObj ->
            GraphQL.Engine.addField
                "policyValue"
                "EnterpriseAllowPrivateRepositoryForkingPolicyValue"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


