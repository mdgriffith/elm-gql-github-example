module GitHub.Input.CancelSponsorshipInput exposing (CancelSponsorshipInput, clientMutationId, input, null, sponsorId, sponsorLogin, sponsorableId, sponsorableLogin)

{-| 
## Creating an input

@docs input, CancelSponsorshipInput

## Null values

@docs null

## Optional fields

@docs clientMutationId, sponsorableLogin, sponsorableId, sponsorLogin, sponsorId
-}


import GitHub
import GitHub.Input
import GraphQL.Engine
import Json.Encode


type alias CancelSponsorshipInput =
    GitHub.Input.CancelSponsorshipInput


input : CancelSponsorshipInput
input =
    GraphQL.Engine.inputObject "CancelSponsorshipInput"


sponsorId : GitHub.Id -> CancelSponsorshipInput -> CancelSponsorshipInput
sponsorId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorLogin : String -> CancelSponsorshipInput -> CancelSponsorshipInput
sponsorLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


sponsorableId : GitHub.Id -> CancelSponsorshipInput -> CancelSponsorshipInput
sponsorableId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableId"
        "ID"
        (GitHub.id.encode newArg_)
        inputObj_


sponsorableLogin : String -> CancelSponsorshipInput -> CancelSponsorshipInput
sponsorableLogin newArg_ inputObj_ =
    GraphQL.Engine.addField
        "sponsorableLogin"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


clientMutationId : String -> CancelSponsorshipInput -> CancelSponsorshipInput
clientMutationId newArg_ inputObj_ =
    GraphQL.Engine.addField
        "clientMutationId"
        "String"
        (Json.Encode.string newArg_)
        inputObj_


null :
    { sponsorId : CancelSponsorshipInput -> CancelSponsorshipInput
    , sponsorLogin : CancelSponsorshipInput -> CancelSponsorshipInput
    , sponsorableId : CancelSponsorshipInput -> CancelSponsorshipInput
    , sponsorableLogin : CancelSponsorshipInput -> CancelSponsorshipInput
    , clientMutationId : CancelSponsorshipInput -> CancelSponsorshipInput
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
    , clientMutationId =
        \inputObj ->
            GraphQL.Engine.addField
                "clientMutationId"
                "String"
                Json.Encode.null
                inputObj
    }


