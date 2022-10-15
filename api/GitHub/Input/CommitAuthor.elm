module GitHub.Input.CommitAuthor exposing (CommitAuthor, emails, id, input, null)

{-| 
## Creating an input

@docs input, CommitAuthor

## Null values

@docs null

## Optional fields

@docs emails, id
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CommitAuthor =
    GitHub.Input.CommitAuthor


input : CommitAuthor
input =
    GraphQL.Engine.inputObject "CommitAuthor"


id : GitHub.Id -> CommitAuthor -> CommitAuthor
id newArg_ inputObj_ =
    GraphQL.Engine.addField "id" "ID" (GitHub.id.encode newArg_) inputObj_


emails : List String -> CommitAuthor -> CommitAuthor
emails newArg_ inputObj_ =
    GraphQL.Engine.addField
        "emails"
        "[String!]"
        (Json.Encode.list Json.Encode.string newArg_)
        inputObj_


null :
    { id : CommitAuthor -> CommitAuthor, emails : CommitAuthor -> CommitAuthor }
null =
    { id =
        \inputObj -> GraphQL.Engine.addField "id" "ID" Json.Encode.null inputObj
    , emails =
        \inputObj ->
            GraphQL.Engine.addField
                "emails"
                "[String!]"
                Json.Encode.null
                inputObj
    }


