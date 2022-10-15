module GitHub.Input.DraftPullRequestReviewComment exposing (DraftPullRequestReviewComment, input)

{-| 
## Creating an input

@docs input, DraftPullRequestReviewComment
-}


import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DraftPullRequestReviewComment =
    GitHub.Input.DraftPullRequestReviewComment


input :
    { path : String, position : Int, body : String }
    -> DraftPullRequestReviewComment
input requiredArgs =
    GraphQL.Engine.addField
        "body"
        "String!"
        (Json.Encode.string requiredArgs.body)
        (GraphQL.Engine.addField
            "position"
            "Int!"
            (Json.Encode.int requiredArgs.position)
            (GraphQL.Engine.addField
                "path"
                "String!"
                (Json.Encode.string requiredArgs.path)
                (GraphQL.Engine.inputObject "DraftPullRequestReviewComment")
            )
        )


