module GitHub.Input.MergeBranchInput exposing (MergeBranchInput, authorEmail, clientMutationId, commitMessage, input, null)

{-| 
## Creating an input

@docs input, MergeBranchInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, authorEmail, commitMessage
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias MergeBranchInput =
    GitHub.Input.MergeBranchInput


input :
    { repositoryId : GitHub.Id, base : String, head : String }
    -> MergeBranchInput
input requiredArgs =
    GraphQL.Engine.addField
        "head"
        "String!"
        (Json.Encode.string requiredArgs.head)
        (GraphQL.Engine.addField
            "base"
            "String!"
            (Json.Encode.string requiredArgs.base)
            (GraphQL.Engine.addField
                "repositoryId"
                "ID!"
                (GitHub.id.encode requiredArgs.repositoryId)
                (GraphQL.Engine.inputObject "MergeBranchInput")
            )
        )


commitMessage : String -> MergeBranchInput -> MergeBranchInput
commitMessage newArg_ inputObj_ =
    GraphQL.Engine.addField
        "commitMessage"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


authorEmail : String -> MergeBranchInput -> MergeBranchInput
authorEmail newArg_ inputObj_ =
    GraphQL.Engine.addField
        "authorEmail"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> MergeBranchInput -> MergeBranchInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { commitMessage : MergeBranchInput -> MergeBranchInput
    , authorEmail : MergeBranchInput -> MergeBranchInput
    , clientMutationId : MergeBranchInput -> MergeBranchInput
    }
null =
    { commitMessage =
        \inputObj ->
            GraphQL.Engine.addField
                "commitMessage"
                "String"
                Json.Encode.null
                inputObj
    , authorEmail =
        \inputObj ->
            GraphQL.Engine.addField
                "authorEmail"
                "String"
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


