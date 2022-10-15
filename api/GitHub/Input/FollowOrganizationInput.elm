module GitHub.Input.FollowOrganizationInput exposing (FollowOrganizationInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, FollowOrganizationInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias FollowOrganizationInput =
    GitHub.Input.FollowOrganizationInput


input : { organizationId : GitHub.Id } -> FollowOrganizationInput
input requiredArgs =
    GraphQL.Engine.addField
        "organizationId"
        "ID!"
        (GitHub.id.encode requiredArgs.organizationId)
        (GraphQL.Engine.inputObject "FollowOrganizationInput")


clientMutationId : String -> FollowOrganizationInput -> FollowOrganizationInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : FollowOrganizationInput -> FollowOrganizationInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


