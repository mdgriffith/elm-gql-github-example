module GitHub.Input.CommittableBranch exposing (CommittableBranch, branchName, id, input, null, repositoryNameWithOwner)

{-| 
## Creating an input

@docs input, CommittableBranch

## Null values

@docs null

## Optional fields

@docs branchName, repositoryNameWithOwner, id
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CommittableBranch =
    GitHub.Input.CommittableBranch


input : CommittableBranch
input =
    GraphQL.Engine.inputObject "CommittableBranch"


id : GitHub.Id -> CommittableBranch -> CommittableBranch
id newArg_ inputObj_ =
    GraphQL.Engine.addField "id" "ID" (GitHub.id.encode newArg_) inputObj_


repositoryNameWithOwner : String -> CommittableBranch -> CommittableBranch
repositoryNameWithOwner newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryNameWithOwner"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


branchName : String -> CommittableBranch -> CommittableBranch
branchName newArg_ inputObj_ =
    GraphQL.Engine.addField
        "branchName"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { id : CommittableBranch -> CommittableBranch
    , repositoryNameWithOwner : CommittableBranch -> CommittableBranch
    , branchName : CommittableBranch -> CommittableBranch
    }
null =
    { id =
        \inputObj -> GraphQL.Engine.addField "id" "ID" Json.Encode.null inputObj
    , repositoryNameWithOwner =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryNameWithOwner"
                "String"
                Json.Encode.null
                inputObj
    , branchName =
        \inputObj ->
            GraphQL.Engine.addField
                "branchName"
                "String"
                Json.Encode.null
                inputObj
    }


