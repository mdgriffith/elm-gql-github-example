module GitHub.Input.UpdateNotificationRestrictionSettingInput exposing (UpdateNotificationRestrictionSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateNotificationRestrictionSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.NotificationRestrictionSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateNotificationRestrictionSettingInput =
    GitHub.Input.UpdateNotificationRestrictionSettingInput


input :
    { ownerId : GitHub.Id
    , settingValue :
        GitHub.Enum.NotificationRestrictionSettingValue.NotificationRestrictionSettingValue
    }
    -> UpdateNotificationRestrictionSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "NotificationRestrictionSettingValue!"
        (GitHub.Enum.NotificationRestrictionSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "ownerId"
            "ID!"
            (GitHub.id.encode requiredArgs.ownerId)
            (GraphQL.Engine.inputObject
                "UpdateNotificationRestrictionSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateNotificationRestrictionSettingInput
    -> UpdateNotificationRestrictionSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateNotificationRestrictionSettingInput
        -> UpdateNotificationRestrictionSettingInput
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


