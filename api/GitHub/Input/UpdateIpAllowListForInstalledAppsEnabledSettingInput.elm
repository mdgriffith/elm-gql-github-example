module GitHub.Input.UpdateIpAllowListForInstalledAppsEnabledSettingInput exposing (UpdateIpAllowListForInstalledAppsEnabledSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateIpAllowListForInstalledAppsEnabledSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.IpAllowListForInstalledAppsEnabledSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateIpAllowListForInstalledAppsEnabledSettingInput =
    GitHub.Input.UpdateIpAllowListForInstalledAppsEnabledSettingInput


input :
    { ownerId : GitHub.Id
    , settingValue :
        GitHub.Enum.IpAllowListForInstalledAppsEnabledSettingValue.IpAllowListForInstalledAppsEnabledSettingValue
    }
    -> UpdateIpAllowListForInstalledAppsEnabledSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "IpAllowListForInstalledAppsEnabledSettingValue!"
        (GitHub.Enum.IpAllowListForInstalledAppsEnabledSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject
                "UpdateIpAllowListForInstalledAppsEnabledSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateIpAllowListForInstalledAppsEnabledSettingInput
    -> UpdateIpAllowListForInstalledAppsEnabledSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateIpAllowListForInstalledAppsEnabledSettingInput
        -> UpdateIpAllowListForInstalledAppsEnabledSettingInput
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


