module GitHub.Input.UpdateOrganizationWebCommitSignoffSettingInput exposing (UpdateOrganizationWebCommitSignoffSettingInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateOrganizationWebCommitSignoffSettingInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateOrganizationWebCommitSignoffSettingInput =
    GitHub.Input.UpdateOrganizationWebCommitSignoffSettingInput


input :
    { organizationId : GitHub.Id, webCommitSignoffRequired : Bool }
    -> UpdateOrganizationWebCommitSignoffSettingInput
input requiredArgs =
    GraphQL.Engine.addField
        "webCommitSignoffRequired"
        "Boolean!"
        (Json.Encode.bool requiredArgs.webCommitSignoffRequired)
        (GraphQL.Engine.addField
            "organizationId"
            "ID!"
            (GitHub.id.encode requiredArgs.organizationId)
            (GraphQL.Engine.inputObject
                "UpdateOrganizationWebCommitSignoffSettingInput"
            )
        )


clientMutationId :
    String
    -> UpdateOrganizationWebCommitSignoffSettingInput
    -> UpdateOrganizationWebCommitSignoffSettingInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        UpdateOrganizationWebCommitSignoffSettingInput
        -> UpdateOrganizationWebCommitSignoffSettingInput
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


