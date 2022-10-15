module GitHub.Input.DeleteTeamDiscussionInput exposing (DeleteTeamDiscussionInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteTeamDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteTeamDiscussionInput =
    GitHub.Input.DeleteTeamDiscussionInput


input : { id : GitHub.Id } -> DeleteTeamDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "id"
        "ID!"
        (GitHub.id.encode requiredArgs.id)
        (GraphQL.Engine.inputObject "DeleteTeamDiscussionInput")


clientMutationId :
    String -> DeleteTeamDiscussionInput -> DeleteTeamDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId : DeleteTeamDiscussionInput -> DeleteTeamDiscussionInput
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


