module GitHub.Input.UpdateSubscriptionInput exposing (UpdateSubscriptionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, UpdateSubscriptionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Enum.SubscriptionState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias UpdateSubscriptionInput =
    GitHub.Input.UpdateSubscriptionInput


input :
    { subscribableId : GitHub.Id
    , state : GitHub.Enum.SubscriptionState.SubscriptionState
    }
    -> UpdateSubscriptionInput
input requiredArgs =
    GraphQL.Engine.addField
        "state"
        "SubscriptionState!"
        (GitHub.Enum.SubscriptionState.encode requiredArgs.state)
        (GraphQL.Engine.addField
            "subscribableId"
            "ID!"
            (GitHub.id.encode requiredArgs.subscribableId)
            (GraphQL.Engine.inputObject "UpdateSubscriptionInput")
        )


clientMutationId : String -> UpdateSubscriptionInput -> UpdateSubscriptionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null : { clientMutationId : UpdateSubscriptionInput -> UpdateSubscriptionInput }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


