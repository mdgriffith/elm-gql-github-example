module GitHub.Input.UpdateEnterpriseDefaultRepositoryPermissionSettingInput exposing (UpdateEnterpriseDefaultRepositoryPermissionSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseDefaultRepositoryPermissionSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseDefaultRepositoryPermissionSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseDefaultRepositoryPermissionSettingInput =
    GitHub.Input.UpdateEnterpriseDefaultRepositoryPermissionSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseDefaultRepositoryPermissionSettingValue.EnterpriseDefaultRepositoryPermissionSettingValue
    }
    -> UpdateEnterpriseDefaultRepositoryPermissionSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseDefaultRepositoryPermissionSettingValue!"
        (GitHub.Enum.EnterpriseDefaultRepositoryPermissionSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "UpdateEnterpriseDefaultRepositoryPermissionSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseDefaultRepositoryPermissionSettingInput
    -> UpdateEnterpriseDefaultRepositoryPermissionSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseDefaultRepositoryPermissionSettingInput
        -> UpdateEnterpriseDefaultRepositoryPermissionSettingInput
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


