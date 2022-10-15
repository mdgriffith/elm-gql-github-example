module GitHub.Input.CreateSponsorshipInput exposing (CreateSponsorshipInput, amount, clientMutationId, input, isRecurring, null, privacyLevel, receiveEmails, sponsorId, sponsorLogin, sponsorableId, sponsorableLogin, tierId)

{-| 
## Creating an input

@docs input, CreateSponsorshipInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, privacyLevel, receiveEmails, isRecurring, amount, tierId, sponsorableLogin, sponsorableId, sponsorLogin, sponsorId
-}


import GitHub
import GitHub.Enum.SponsorshipPrivacy
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CreateSponsorshipInput =
    GitHub.Input.CreateSponsorshipInput


input : CreateSponsorshipInput
input =
    GraphQL.Engine.inputObject "CreateSponsorshipInput"


sponsorId : GitHub.Id -> CreateSponsorshipInput -> CreateSponsorshipInput
sponsorId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorLogin : String -> CreateSponsorshipInput -> CreateSponsorshipInput
sponsorLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


sponsorableId : GitHub.Id -> CreateSponsorshipInput -> CreateSponsorshipInput
sponsorableId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorableLogin : String -> CreateSponsorshipInput -> CreateSponsorshipInput
sponsorableLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


tierId : GitHub.Id -> CreateSponsorshipInput -> CreateSponsorshipInput
tierId newArg_ inputObj_ =
    GraphQL.Engine.addField "tierId" "ID" (GitHub.id.encode newArg_) inputObj_


amount : Int -> CreateSponsorshipInput -> CreateSponsorshipInput
amount newArg_ inputObj_ =
    GraphQL.Engine.addField "amount" "Int" (Json.Encode.int newArg_) inputObj_


isRecurring : Bool -> CreateSponsorshipInput -> CreateSponsorshipInput
isRecurring newArg_ inputObj_ =
    GraphQL.Engine.addField
        "isRecurring"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


receiveEmails : Bool -> CreateSponsorshipInput -> CreateSponsorshipInput
receiveEmails newArg_ inputObj_ =
    GraphQL.Engine.addField
        "receiveEmails"
        "Boolean"
        (Json.Encode.bool newArg_)
        inputObj_


privacyLevel :
    GitHub.Enum.SponsorshipPrivacy.SponsorshipPrivacy
    -> CreateSponsorshipInput
    -> CreateSponsorshipInput
privacyLevel newArg_ inputObj_ =
    GraphQL.Engine.addField
        "privacyLevel"
        "SponsorshipPrivacy"
        (GitHub.Enum.SponsorshipPrivacy.encode newArg_)
        inputObj_


clientMutationId : String -> CreateSponsorshipInput -> CreateSponsorshipInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { sponsorId : CreateSponsorshipInput -> CreateSponsorshipInput
    , sponsorLogin : CreateSponsorshipInput -> CreateSponsorshipInput
    , sponsorableId : CreateSponsorshipInput -> CreateSponsorshipInput
    , sponsorableLogin : CreateSponsorshipInput -> CreateSponsorshipInput
    , tierId : CreateSponsorshipInput -> CreateSponsorshipInput
    , amount : CreateSponsorshipInput -> CreateSponsorshipInput
    , isRecurring : CreateSponsorshipInput -> CreateSponsorshipInput
    , receiveEmails : CreateSponsorshipInput -> CreateSponsorshipInput
    , privacyLevel : CreateSponsorshipInput -> CreateSponsorshipInput
    , clientMutationId : CreateSponsorshipInput -> CreateSponsorshipInput
    }
null =
    { sponsorId =
        \inputObj ->
            GraphQL.Engine.addField "sponsorId" "ID" Json.Encode.null inputObj
    , sponsorLogin =
        \inputObj ->
            GraphQL.Engine.addField
                "sponsorLogin"
                "String"
                Json.Encode.null
                inputObj
    , sponsorableId =
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
    , tierId =
        \inputObj ->
            GraphQL.Engine.addField "tierId" "ID" Json.Encode.null inputObj
    , amount =
        \inputObj ->
            GraphQL.Engine.addField "amount" "Int" Json.Encode.null inputObj
    , isRecurring =
        \inputObj ->
            GraphQL.Engine.addField
                "isRecurring"
                "Boolean"
                Json.Encode.null
                inputObj
    , receiveEmails =
        \inputObj ->
            GraphQL.Engine.addField
                "receiveEmails"
                "Boolean"
                Json.Encode.null
                inputObj
    , privacyLevel =
        \inputObj ->
            GraphQL.Engine.addField
                "privacyLevel"
                "SponsorshipPrivacy"
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


