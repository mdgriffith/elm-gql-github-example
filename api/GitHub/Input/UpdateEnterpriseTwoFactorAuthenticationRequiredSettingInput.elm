module GitHub.Input.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput exposing (UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseEnabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput =
    GitHub.Input.UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseEnabledSettingValue.EnterpriseEnabledSettingValue
    }
    -> UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseEnabledSettingValue!"
        (GitHub.Enum.EnterpriseEnabledSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
    -> UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
        -> UpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
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


