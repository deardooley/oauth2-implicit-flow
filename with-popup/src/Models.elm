module Models exposing (..)


type alias Model =
    { message : String
    , logo : String
    , token : Maybe String
    , error : Maybe String
    }


type Msg
    = CheckToken (Maybe String)
    | Authorized OAuthSuccess
    | NotAuthorized OAuthError
    | Login


type alias OAuthConfig =
    { client : String
    , url : String
    , redirect : String
    , scope : String
    }


type alias OAuthError =
    { error : String }


type alias OAuthSuccess =
    { access_token : String
    }


config : OAuthConfig
config =
    { client = "1676489349323550"
    , url = "https://www.facebook.com/dialog/oauth"
    , redirect = "http://localhost:8000"
    , scope = ""
    }
