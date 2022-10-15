module GitHub.Input.DraftPullRequestReviewThread exposing (DraftPullRequestReviewThread, input, null, side, startLine, startSide)

{-| 
## Creating an input

@docs input, DraftPullRequestReviewThread

## Null values

@docs null

## Optional fields

@docs startSide, startLine, side
-}


import GitHub.Enum.DiffSide
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DraftPullRequestReviewThread =
    GitHub.Input.DraftPullRequestReviewThread


input :
    { path : String, line : Int, body : String } -> DraftPullRequestReviewThread
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "line"
            "Int!"
            (Json.Encode.int requiredArgs.line)
            (GraphQL.Engine.addField
                "path"
                "String!"
                (Json.Encode.string requiredArgs.path)
                (GraphQL.Engine.inputObject "DraftPullRequestReviewThread")
            )
        )


side :
    GitHub.Enum.DiffSide.DiffSide
    -> DraftPullRequestReviewThread
    -> DraftPullRequestReviewThread
side newArg_ inputObj_ =
    GraphQL.Engine.addField
        "side"
        "DiffSide"
        (GitHub.Enum.DiffSide.encode newArg_)
        inputObj_


startLine : Int -> DraftPullRequestReviewThread -> DraftPullRequestReviewThread
startLine newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startLine"
        "Int"
        (Json.Encode.int newArg_)
        inputObj_


startSide :
    GitHub.Enum.DiffSide.DiffSide
    -> DraftPullRequestReviewThread
    -> DraftPullRequestReviewThread
startSide newArg_ inputObj_ =
    GraphQL.Engine.addField
        "startSide"
        "DiffSide"
        (GitHub.Enum.DiffSide.encode newArg_)
        inputObj_


null :
    { side : DraftPullRequestReviewThread -> DraftPullRequestReviewThread
    , startLine : DraftPullRequestReviewThread -> DraftPullRequestReviewThread
    , startSide : DraftPullRequestReviewThread -> DraftPullRequestReviewThread
    }
null =
    { side =
        \inputObj ->
            GraphQL.Engine.addField "side" "DiffSide" Json.Encode.null inputObj
    , startLine =
        \inputObj ->
            GraphQL.Engine.addField "startLine" "Int" Json.Encode.null inputObj
    , startSide =
        \inputObj ->
            GraphQL.Engine.addField
                "startSide"
                "DiffSide"
                Json.Encode.null
                inputObj
    }


