module GitHub.Input.UpdateEnterpriseMembersCanMakePurchasesSettingInput exposing (UpdateEnterpriseMembersCanMakePurchasesSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateEnterpriseMembersCanMakePurchasesSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.EnterpriseMembersCanMakePurchasesSettingValue
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateEnterpriseMembersCanMakePurchasesSettingInput =
    GitHub.Input.UpdateEnterpriseMembersCanMakePurchasesSettingInput


input :
    { enterpriseId : GitHub.Id
    , settingValue :
        GitHub.Enum.EnterpriseMembersCanMakePurchasesSettingValue.EnterpriseMembersCanMakePurchasesSettingValue
    }
    -> UpdateEnterpriseMembersCanMakePurchasesSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "settingValue"
        "EnterpriseMembersCanMakePurchasesSettingValue!"
        (GitHub.Enum.EnterpriseMembersCanMakePurchasesSettingValue.encode
            requiredArgs.settingValue
        )
        (GraphQL.Engine.addField
            "enterpriseId"
            "ID!"
            (GitHub.id.encode requiredArgs.enterpriseId)
            (GraphQL.Engine.inputObject
                "UpdateEnterpriseMembersCanMakePurchasesSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateEnterpriseMembersCanMakePurchasesSettingInput
    -> UpdateEnterpriseMembersCanMakePurchasesSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateEnterpriseMembersCanMakePurchasesSettingInput
        -> UpdateEnterpriseMembersCanMakePurchasesSettingInput
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


