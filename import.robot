*** Settings ***
Library     AppiumLibrary
Library     JSONLibrary
Resource    ./Keywords/keyword.resource
Resource    ./Keywords/login.resource
Resource    ./Keywords/sport.resource
Resource    ./Keywords/livetv.resource
Resource    ./Keywords/package.resource
Resource    ./Resource/locator_login.resource
Resource    ./Resource/locator_package.resource
Resource    ./Resource/locator_sport.resource
Resource    ./Resource/locator_livetv.resource
Variables   ./Resource/Testdata_login.yaml
Variables   ./Resource/Testdata_sport.yaml
Variables   ./Resource/Testdata_livetv.yaml
Variables   ./Resource/Testdata_package.yaml