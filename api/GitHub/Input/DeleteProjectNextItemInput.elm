module GitHub.Input.DeleteProjectNextItemInput exposing (DeleteProjectNextItemInput, clientMutationId, input, itemId, null, projectId)

{-| 
## Creating an input

@docs input, DeleteProjectNextItemInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, itemId, projectId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteProjectNextItemInput =
    GitHub.Input.DeleteProjectNextItemInput


input : DeleteProjectNextItemInput
input =
    GraphQL.Engine.inputObject "DeleteProjectNextItemInput"


projectId :
    GitHub.Id -> DeleteProjectNextItemInput -> DeleteProjectNextItemInput
projectId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "projectId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


itemId : GitHub.Id -> DeleteProjectNextItemInput -> DeleteProjectNextItemInput
itemId newArg_ inputObj_ =
    GraphQL.Engine.addField "itemId" "ID" (GitHub.id.encode newArg_) inputObj_


clientMutationId :
    String -> DeleteProjectNextItemInput -> DeleteProjectNextItemInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { projectId : DeleteProjectNextItemInput -> DeleteProjectNextItemInput
    , itemId : DeleteProjectNextItemInput -> DeleteProjectNextItemInput
    , clientMutationId :
        DeleteProjectNextItemInput -> DeleteProjectNextItemInput
    }
null =
    { projectId =
        \inputObj ->
            GraphQL.Engine.addField "projectId" "ID" Json.Encode.null inputObj
    , itemId =
        \inputObj ->
            GraphQL.Engine.addField "itemId" "ID" Json.Encode.null inputObj
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


