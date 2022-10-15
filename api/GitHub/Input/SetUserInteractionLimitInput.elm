module GitHub.Input.SetUserInteractionLimitInput exposing (SetUserInteractionLimitInput, clientMutationId, expiry, input, null)

{-| 
## Creating an input

@docs input, SetUserInteractionLimitInput

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


type alias SetUserInteractionLimitInput =
    GitHub.Input.SetUserInteractionLimitInput


input :
    { userId : GitHub.Id
    , limit : GitHub.Enum.RepositoryInteractionLimit.RepositoryInteractionLimit
    }
    -> SetUserInteractionLimitInput
input requiredArgs =
    GraphQL.Engine.addField
        "limit"
        "RepositoryInteractionLimit!"
        (GitHub.Enum.RepositoryInteractionLimit.encode requiredArgs.limit)
        (GraphQL.Engine.addField
            "userId"
            "ID!"
            (GitHub.id.encode requiredArgs.userId)
            (GraphQL.Engine.inputObject "SetUserInteractionLimitInput")
        )


expiry :
    GitHub.Enum.RepositoryInteractionLimitExpiry.RepositoryInteractionLimitExpiry
    -> SetUserInteractionLimitInput
    -> SetUserInteractionLimitInput
expiry newArg_ inputObj_ =
    GraphQL.Engine.addField
        "expiry"
        "RepositoryInteractionLimitExpiry"
        (GitHub.Enum.RepositoryInteractionLimitExpiry.encode newArg_)
        inputObj_


clientMutationId :
    String -> SetUserInteractionLimitInput -> SetUserInteractionLimitInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { expiry : SetUserInteractionLimitInput -> SetUserInteractionLimitInput
    , clientMutationId :
        SetUserInteractionLimitInput -> SetUserInteractionLimitInput
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


