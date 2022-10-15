module GitHub.Input.IssueFilters exposing (IssueFilters, assignee, createdBy, input, labels, mentioned, milestone, milestoneNumber, null, since, states, viewerSubscribed)

{-| 
## Creating an input

@docs input, IssueFilters

## Null values

@docs null

## Optional fields

@docs viewerSubscribed, states, since, milestoneNumber, milestone, mentioned, labels, createdBy, assignee
-}


import GitHub
import GitHub.Enum.IssueState
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias IssueFilters =
    GitHub.Input.IssueFilters


input : IssueFilters
input =
    GraphQL.Engine.inputObject "IssueFilters"


assignee : String -> IssueFilters -> IssueFilters
assignee newArg_ inputObj_ =
    GraphQL.Engine.addField
        "assignee"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


createdBy : String -> IssueFilters -> IssueFilters
createdBy newArg_ inputObj_ =
    GraphQL.Engine.addField
        "createdBy"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


labels : List String -> IssueFilters -> IssueFilters
labels newArg_ inputObj_ =
    GraphQL.Engine.addField
        "labels"
        "[String!]"
        (Json.Encode.list Json.Encode.string newArg_)
        inputObj_


mentioned : String -> IssueFilters -> IssueFilters
mentioned newArg_ inputObj_ =
    GraphQL.Engine.addField
        "mentioned"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


milestone : String -> IssueFilters -> IssueFilters
milestone newArg_ inputObj_ =
    GraphQL.Engine.addField
        "milestone"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


milestoneNumber : String -> IssueFilters -> IssueFilters
milestoneNumber newArg_ inputObj_ =
    GraphQL.Engine.addField
        "milestoneNumber"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


since : GitHub.DateTime -> IssueFilters -> IssueFilters
since newArg_ inputObj_ =
    GraphQL.Engine.addField
        "since"
        "DateTime"
        (GitHub.dateTime.encode newArg_)
        inputObj_


states : List GitHub.Enum.IssueState.IssueState -> IssueFilters -> IssueFilters
states newArg_ inputObj_ =
    GraphQL.Engine.addField
        "states"
        "[IssueState!]"
        (Json.Encode.list GitHub.Enum.IssueState.encode newArg_)
        inputObj_


viewerSubscribed : Bool -> IssueFilters -> IssueFilters
viewerSubscribed newArg_ inputObj_ =
    GraphQL.Engine.addField
        "viewerSubscribed"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


null :
    { assignee : IssueFilters -> IssueFilters
    , createdBy : IssueFilters -> IssueFilters
    , labels : IssueFilters -> IssueFilters
    , mentioned : IssueFilters -> IssueFilters
    , milestone : IssueFilters -> IssueFilters
    , milestoneNumber : IssueFilters -> IssueFilters
    , since : IssueFilters -> IssueFilters
    , states : IssueFilters -> IssueFilters
    , viewerSubscribed : IssueFilters -> IssueFilters
    }
null =
    { assignee =
        \inputObj ->
            GraphQL.Engine.addField
                "assignee"
                "String"
                Json.Encode.null
                inputObj
    , createdBy =
        \inputObj ->
            GraphQL.Engine.addField
                "createdBy"
                "String"
                Json.Encode.null
                inputObj
    , labels =
        \inputObj ->
            GraphQL.Engine.addField
                "labels"
                "[String!]"
                Json.Encode.null
                inputObj
    , mentioned =
        \inputObj ->
            GraphQL.Engine.addField
                "mentioned"
                "String"
                Json.Encode.null
                inputObj
    , milestone =
        \inputObj ->
            GraphQL.Engine.addField
                "milestone"
                "String"
                Json.Encode.null
                inputObj
    , milestoneNumber =
        \inputObj ->
            GraphQL.Engine.addField
                "milestoneNumber"
                "String"
                Json.Encode.null
                inputObj
    , since =
        \inputObj ->
            GraphQL.Engine.addField "since" "DateTime" Json.Encode.null inputObj
    , states =
        \inputObj ->
            GraphQL.Engine.addField
                "states"
                "[IssueState!]"
                Json.Encode.null
                inputObj
    , viewerSubscribed =
        \inputObj ->
            GraphQL.Engine.addField
                "viewerSubscribed"
                "Boolean"
                Json.Encode.null
                inputObj
    }


