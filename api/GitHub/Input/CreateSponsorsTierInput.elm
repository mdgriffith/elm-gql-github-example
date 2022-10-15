module GitHub.Input.CreateSponsorsTierInput exposing (CreateSponsorsTierInput, clientMutationId, input, isRecurring, null, publish, repositoryId, repositoryName, repositoryOwnerLogin, sponsorableId, sponsorableLogin, welcomeMessage)

{-| 
## Creating an input

@docs input, CreateSponsorsTierInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, publish, welcomeMessage, repositoryName, repositoryOwnerLogin, repositoryId, isRecurring, sponsorableLogin, sponsorableId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateSponsorsTierInput =
    GitHub.Input.CreateSponsorsTierInput


input : { amount : Int, description : String } -> CreateSponsorsTierInput
input requiredArgs =
    GraphQL.Engine.addField
        "description"
        "String!"
        (Json.Encode.string requiredArgs.description)
        (GraphQL.Engine.addField
            "amount"
            "Int!"
            (Json.Encode.int requiredArgs.amount)
            (GraphQL.Engine.inputObject "CreateSponsorsTierInput")
        )


sponsorableId : GitHub.Id -> CreateSponsorsTierInput -> CreateSponsorsTierInput
sponsorableId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorableLogin : String -> CreateSponsorsTierInput -> CreateSponsorsTierInput
sponsorableLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


isRecurring : Bool -> CreateSponsorsTierInput -> CreateSponsorsTierInput
isRecurring newArg_ inputObj_ =
    GraphQL.Engine.addField
        "isRecurring"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


repositoryId : GitHub.Id -> CreateSponsorsTierInput -> CreateSponsorsTierInput
repositoryId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


repositoryOwnerLogin :
    String -> CreateSponsorsTierInput -> CreateSponsorsTierInput
repositoryOwnerLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryOwnerLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


repositoryName : String -> CreateSponsorsTierInput -> CreateSponsorsTierInput
repositoryName newArg_ inputObj_ =
    GraphQL.Engine.addField
        "repositoryName"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


welcomeMessage : String -> CreateSponsorsTierInput -> CreateSponsorsTierInput
welcomeMessage newArg_ inputObj_ =
    GraphQL.Engine.addField
        "welcomeMessage"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


publish : Bool -> CreateSponsorsTierInput -> CreateSponsorsTierInput
publish newArg_ inputObj_ =
    GraphQL.Engine.addField
        "publish"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


clientMutationId : String -> CreateSponsorsTierInput -> CreateSponsorsTierInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { sponsorableId : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , sponsorableLogin : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , isRecurring : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , repositoryId : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , repositoryOwnerLogin : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , repositoryName : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , welcomeMessage : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , publish : CreateSponsorsTierInput -> CreateSponsorsTierInput
    , clientMutationId : CreateSponsorsTierInput -> CreateSponsorsTierInput
    }
null =
    { sponsorableId =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorableId"
                "ID"
                Json.Encode.null
                inputObj
    , sponsorableLogin =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorableLogin"
                "String"
                Json.Encode.null
                inputObj
    , isRecurring =
        \inputObj ->
            GraphQL.Engine.addField
                "isRecurring"
                "Boolean"
                Json.Encode.null
                inputObj
    , repositoryId =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryId"
                "ID"
                Json.Encode.null
                inputObj
    , repositoryOwnerLogin =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryOwnerLogin"
                "String"
                Json.Encode.null
                inputObj
    , repositoryName =
        \inputObj ->
            GraphQL.Engine.addField
                "repositoryName"
                "String"
                Json.Encode.null
                inputObj
    , welcomeMessage =
        \inputObj ->
            GraphQL.Engine.addField
                "welcomeMessage"
                "String"
                Json.Encode.null
                inputObj
    , publish =
        \inputObj ->
            GraphQL.Engine.addField
                "publish"
                "Boolean"
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


