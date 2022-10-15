module GitHub.Input.SetOrganizationInteractionLimitInput exposing (SetOrganizationInteractionLimitInput, clientMutationId, expiry, input, null)

{-| 
## Creating an input

@docs input, SetOrganizationInteractionLimitInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, expiry
-}


import GitHub
import GitHub.Enum.RepositoryInteractionLimit
import GitHub.Enum.RepositoryInteractionLimitExpiry
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias SetOrganizationInteractionLimitInput =
    GitHub.Input.SetOrganizationInteractionLimitInput


input :
    { organizationId : GitHub.Id
    , limit : GitHub.Enum.RepositoryInteractionLimit.RepositoryInteractionLimit
    }
    -> SetOrganizationInteractionLimitInput
input requiredArgs =
    GraphQL.Engine.addField
        "limit"
        "RepositoryInteractionLimit!"
        (GitHub.Enum.RepositoryInteractionLimit.encode requiredArgs.limit)
        (GraphQL.Engine.addField
            "organizationId"
            "ID!"
            (GitHub.id.encode requiredArgs.organizationId)
            (GraphQL.Engine.inputObject "SetOrganizationInteractionLimitInput")
        )


expiry :
    GitHub.Enum.RepositoryInteractionLimitExpiry.RepositoryInteractionLimitExpiry
    -> SetOrganizationInteractionLimitInput
    -> SetOrganizationInteractionLimitInput
expiry newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expiry"
        "RepositoryInteractionLimitExpiry"
        (GitHub.Enum.RepositoryInteractionLimitExpiry.encode newArg_)
        inputObj_


clientMutationId :
    String
    -> SetOrganizationInteractionLimitInput
    -> SetOrganizationInteractionLimitInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { expiry :
        SetOrganizationInteractionLimitInput
        -> SetOrganizationInteractionLimitInput
    , clientMutationId :
        SetOrganizationInteractionLimitInput
        -> SetOrganizationInteractionLimitInput
    }
null =
    { expiry =
        \inputObj ->
            GraphQL.Engine.addField
                "expiry"
                "RepositoryInteractionLimitExpiry"
                Json.Encode.null
                inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


