module GitHub.Input.CreateTeamDiscussionInput exposing (CreateTeamDiscussionInput, clientMutationId, input, null, private)

{-| 
## Creating an input

@docs input, CreateTeamDiscussionInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, private
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateTeamDiscussionInput =
    GitHub.Input.CreateTeamDiscussionInput


input :
    { teamId : GitHub.Id, title : String, body : String }
    -> CreateTeamDiscussionInput
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "title"
            "String!"
            (Json.Encode.string requiredArgs.title)
            (GraphQL.Engine.addField
                "teamId"
                "ID!"
                (GitHub.id.encode requiredArgs.teamId)
                (GraphQL.Engine.inputObject "CreateTeamDiscussionInput")
            )
        )


private : Bool -> CreateTeamDiscussionInput -> CreateTeamDiscussionInput
private newArg_ inputObj_ =
    GraphQL.Engine.addField
        "private"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId :
    String -> CreateTeamDiscussionInput -> CreateTeamDiscussionInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { private : CreateTeamDiscussionInput -> CreateTeamDiscussionInput
    , clientMutationId : CreateTeamDiscussionInput -> CreateTeamDiscussionInput
    }
null =
    { private =
        \inputObj ->
            GraphQL.Engine.addField
                "private"
                "Boolean"
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


