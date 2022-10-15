module GitHub.Input.CreateLinkedBranchInput exposing (CreateLinkedBranchInput, clientMutationId, input, name, null, repositoryId)

{-| 
## Creating an input

@docs input, CreateLinkedBranchInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, repositoryId, name
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateLinkedBranchInput =
    GitHub.Input.CreateLinkedBranchInput


input :
    { issueId : GitHub.Id, oid : GitHub.GitObjectID } -> CreateLinkedBranchInput
input requiredArgs =
    GraphQL.Engine.addField
        "oid"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.oid)
        (GraphQL.Engine.addField
            "issueId"
            "ID!"
            (GitHub.id.encode requiredArgs.issueId)
            (GraphQL.Engine.inputObject "CreateLinkedBranchInput")
        )


name : String -> CreateLinkedBranchInput -> CreateLinkedBranchInput
name newArg_ inputObj_ =
    GraphQL.Engine.addField
        "name"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


repositoryId : GitHub.Id -> CreateLinkedBranchInput -> CreateLinkedBranchInput
repositoryId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


clientMutationId : String -> CreateLinkedBranchInput -> CreateLinkedBranchInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { name : CreateLinkedBranchInput -> CreateLinkedBranchInput
    , repositoryId : CreateLinkedBranchInput -> CreateLinkedBranchInput
    , clientMutationId : CreateLinkedBranchInput -> CreateLinkedBranchInput
    }
null =
    { name =
        \inputObj ->
            GraphQL.Engine.addField "name" "String" Json.Encode.null inputObj
    , repositoryId =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryId"
                "ID"
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


