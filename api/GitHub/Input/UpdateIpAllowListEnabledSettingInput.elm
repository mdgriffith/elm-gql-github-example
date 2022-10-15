module GitHub.Input.UpdateIpAllowListEnabledSettingInput exposing (UpdateIpAllowListEnabledSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateIpAllowListEnabledSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.IpAllowListEnabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateIpAllowListEnabledSettingInput =
    GitHub.Input.UpdateIpAllowListEnabledSettingInput


input :
    { ownerId : GitHub.Id
    , settingValue :
        GitHub.Enum.IpAllowListEnabledSettingValue.IpAllowListEnabledSettingValue
    }
    -> UpdateIpAllowListEnabledSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "IpAllowListEnabledSettingValue!"
        (GitHub.Enum.IpAllowListEnabledSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject "UpdateIpAllowListEnabledSettingInput")
        )


clientMutationId :
    String
    -> UpdateIpAllowListEnabledSettingInput
    -> UpdateIpAllowListEnabledSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateIpAllowListEnabledSettingInput
        -> UpdateIpAllowListEnabledSettingInput
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


