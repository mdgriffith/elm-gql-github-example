module GitHub.Input.CreateCommitOnBranchInput exposing (CreateCommitOnBranchInput, clientMutationId, fileChanges, input, null)

{-| 
## Creating an input

@docs input, CreateCommitOnBranchInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, fileChanges
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias CreateCommitOnBranchInput =
    GitHub.Input.CreateCommitOnBranchInput


input :
    { branch : GitHub.Input.CommittableBranch
    , message : GitHub.Input.CommitMessage
    , expectedHeadOid : GitHub.GitObjectID
    }
    -> CreateCommitOnBranchInput
input requiredArgs =
    GraphQL.Engine.addField
        "expectedHeadOid"
        "GitObjectID!"
        (GitHub.gitObjectID.encode requiredArgs.expectedHeadOid)
        (GraphQL.Engine.addField
            "message"
            "CommitMessage!"
            (GraphQL.Engine.encodeInputObjectAsJson requiredArgs.message)
            (GraphQL.Engine.addField
                "branch"
                "CommittableBranch!"
                (GraphQL.Engine.encodeInputObjectAsJson requiredArgs.branch)
                (GraphQL.Engine.inputObject "CreateCommitOnBranchInput")
            )
        )


fileChanges :
    GitHub.Input.FileChanges
    -> CreateCommitOnBranchInput
    -> CreateCommitOnBranchInput
fileChanges newArg_ inputObj_ =
    GraphQL.Engine.addField
        "fileChanges"
        "FileChanges"
        (GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


clientMutationId :
    String -> CreateCommitOnBranchInput -> CreateCommitOnBranchInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { fileChanges : CreateCommitOnBranchInput -> CreateCommitOnBranchInput
    , clientMutationId : CreateCommitOnBranchInput -> CreateCommitOnBranchInput
    }
null =
    { fileChanges =
        \inputObj ->
            GraphQL.Engine.addField
                "fileChanges"
                "FileChanges"
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


