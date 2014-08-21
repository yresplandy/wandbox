module Handler.Terms (
  getTermsR
) where

import Import

import qualified Yesod                                  as Y

import Settings (widgetFile)
import Foundation (Handler, Route(..))

getTermsR :: Handler Y.Html
getTermsR = do
    Y.defaultLayout $ do
        Y.setTitle "Wandbox Terms of Use"
        Y.addScriptRemote "http://code.jquery.com/jquery-2.1.1.min.js"
        Y.addScriptRemote "//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"
        Y.addStylesheetRemote "//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
        $(widgetFile "terms-of-use")
