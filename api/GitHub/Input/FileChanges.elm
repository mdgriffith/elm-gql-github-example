module GitHub.Input.FileChanges exposing (FileChanges, additions, deletions, input, null)

{-| 
## Creating an input

@docs input, FileChanges

## Null values

@docs null

## Optional fields

@docs additions, deletions
-}


import GitHub.Input
import GraphQL.Engine
import Json.Decode
import Json.Encode


type alias FileChanges =
    GitHub.Input.FileChanges


input : FileChanges
input =
    GraphQL.Engine.inputObject "FileChanges"


deletions : List GitHub.Input.FileDeletion -> FileChanges -> FileChanges
deletions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "deletions"
        "[FileDeletion!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


additions : List GitHub.Input.FileAddition -> FileChanges -> FileChanges
additions newArg_ inputObj_ =
    GraphQL.Engine.addField
        "additions"
        "[FileAddition!]"
        (Json.Encode.list GraphQL.Engine.encodeInputObjectAsJson newArg_)
        inputObj_


null :
    { deletions : FileChanges -> FileChanges
    , additions : FileChanges -> FileChanges
    }
null =
    { deletions =
        \inputObj ->
            GraphQL.Engine.addField
                "deletions"
                "[FileDeletion!]"
                Json.Encode.null
                inputObj
    , additions =
        \inputObj ->
            GraphQL.Engine.addField
                "additions"
                "[FileAddition!]"
                Json.Encode.null
                inputObj
    }


