module GitHub.Input.DeleteBranchProtectionRuleInput exposing (DeleteBranchProtectionRuleInput, clientMutationId, input, null)

{-| 
## Creating an input

@docs input, DeleteBranchProtectionRuleInput

## Null values

@docs null

## Optional fields

@docs clientMutationId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias DeleteBranchProtectionRuleInput =
    GitHub.Input.DeleteBranchProtectionRuleInput


input :
    { branchProtectionRuleId : GitHub.Id } -> DeleteBranchProtectionRuleInput
input requiredArgs =
    GraphQL.Engine.addField
        "branchProtectionRuleId"
        "ID!"
        (GitHub.id.encode requiredArgs.branchProtectionRuleId)
        (GraphQL.Engine.inputObject "DeleteBranchProtectionRuleInput")


clientMutationId :
    String -> DeleteBranchProtectionRuleInput -> DeleteBranchProtectionRuleInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { clientMutationId :
        DeleteBranchProtectionRuleInput -> DeleteBranchProtectionRuleInput
    }
null =
    { clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


