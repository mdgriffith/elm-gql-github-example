module GitHub.Input.UnfollowOrganizationInput exposing (UnfollowOrganizationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UnfollowOrganizationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UnfollowOrganizationInput =
    GitHub.Input.UnfollowOrganizationInput


input : { organizationId : GitHub.Id } -> UnfollowOrganizationInput
input requiredArgs =
    GraphQL.Engine.addField
        "organizationId"
        "ID!"
        (GitHub.id.encode requiredArgs.organizationId)
        (GraphQL.Engine.inputObject "UnfollowOrganizationInput")


clientMutationId :
    String -> UnfollowOrganizationInput -> UnfollowOrganizationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : UnfollowOrganizationInput -> UnfollowOrganizationInput
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


