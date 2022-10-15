module GitHub.Input.SetRepositoryInteractionLimitInput exposing (SetRepositoryInteractionLimitInput, clientMutationId, expiry, input, null)

{-| 
## Creating an input

@docs input, SetRepositoryInteractionLimitInput

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


type alias SetRepositoryInteractionLimitInput =
    GitHub.Input.SetRepositoryInteractionLimitInput


input :
    { repositoryId : GitHub.Id
    , limit : GitHub.Enum.RepositoryInteractionLimit.RepositoryInteractionLimit
    }
    -> SetRepositoryInteractionLimitInput
input requiredArgs =
    GraphQL.Engine.addField
        "limit"
        "RepositoryInteractionLimit!"
        (GitHub.Enum.RepositoryInteractionLimit.encode requiredArgs.limit)
        (GraphQL.Engine.addField
            "repositoryId"
            "ID!"
            (GitHub.id.encode requiredArgs.repositoryId)
            (GraphQL.Engine.inputObject "SetRepositoryInteractionLimitInput")
        )


expiry :
    GitHub.Enum.RepositoryInteractionLimitExpiry.RepositoryInteractionLimitExpiry
    -> SetRepositoryInteractionLimitInput
    -> SetRepositoryInteractionLimitInput
expiry newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expiry"
        "RepositoryInteractionLimitExpiry"
        (GitHub.Enum.RepositoryInteractionLimitExpiry.encode newArg_)
        inputObj_


clientMutationId :
    String
    -> SetRepositoryInteractionLimitInput
    -> SetRepositoryInteractionLimitInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { expiry :
        SetRepositoryInteractionLimitInput -> SetRepositoryInteractionLimitInput
    , clientMutationId :
        SetRepositoryInteractionLimitInput -> SetRepositoryInteractionLimitInput
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


