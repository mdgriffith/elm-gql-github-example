module GitHub.Input.UpdateOrganizationAllowPrivateRepositoryForkingSettingInput exposing (UpdateOrganizationAllowPrivateRepositoryForkingSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateOrganizationAllowPrivateRepositoryForkingSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateOrganizationAllowPrivateRepositoryForkingSettingInput =
    GitHub.Input.UpdateOrganizationAllowPrivateRepositoryForkingSettingInput


input :
    { organizationId : GitHub.Id, forkingEnabled : Bool }
    -> UpdateOrganizationAllowPrivateRepositoryForkingSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "forkingEnabled"
        "Boolean!"
        (Json.Encode.bool requiredArgs.forkingEnabled)
        (GraphQL.Engine.addField
            "organizationId"
            "ID!"
            (GitHub.id.encode requiredArgs.organizationId)
            (GraphQL.Engine.inputObject
                "UpdateOrganizationAllowPrivateRepositoryForkingSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateOrganizationAllowPrivateRepositoryForkingSettingInput
    -> UpdateOrganizationAllowPrivateRepositoryForkingSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateOrganizationAllowPrivateRepositoryForkingSettingInput
        -> UpdateOrganizationAllowPrivateRepositoryForkingSettingInput
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


