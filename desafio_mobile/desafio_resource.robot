
*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Library          AppiumLibrary


*** Variables ***
# Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        8.0
${DEVICE_NAME}             nexus
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2


## variaveis do aplicativo
${BTN_LOGIN}             accessibility_id=Account
${BTN_SINGIN}            button 
${BTN_ADD}               name
${INSERT_EMAIL}          android.widget.EditText
${BTN_NEXT}              android.widget.Button
${INSERT_PSW}            android.widget.EditText
${}          




*** Keywords ***
Abrir o aplicativo no celular
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                  platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}  

Logar no aplicativo com a conta "${email}" 
    
    Wait Until Element Is Visible       ${BTN_LOGIN}   30     
    Click Element                       ${BTN_LOGIN}           
    
    Wait Until Element Is Visible       ${BTN_SINGIN}  30
    Click Element                       ${BTN_SINGIN}  

    Wait Until Element Is Visible       ${BTN_ADD}  30
    Click Element                       ${BTN_ADD}  

    Wait Until Element Is Visible       ${INSERT_EMAIL}       30
    Input Text                          ${INSERT_EMAIL}       ${email}






Entrar no menu “${nome_do_menu}”



Usar swipe de tela até o 10 item da tela



Clicar no vídeo
 
# # accessibility id= ok
# Click Element    accessibility id=Account ok
# # id=com.google.android.youtube:id/button ok
# Click Element    id=com.google.android.youtube:id/button ok
# # id=com.google.android.youtube:id/name ok
# Click Element    id=com.google.android.youtube:id/name ok
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
# Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText    viniciussweber@hotmail.com
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText
# Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText    vinicius13
# Tap    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText    701    1123
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# Swipe    331    1009    389    222
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# # accessibility id=Trending
# Click Element    accessibility id=Trending
# Swipe    312    845    344    341
# Swipe    300    1049    289    489
# Swipe    422    1071    436    492
# Swipe    449    1076    384    561
# Swipe    410    880    417    208
# Swipe    338    1059    329    520
# Swipe    465    1068    408    363
# Swipe    329    1056    412    501
# # xpath=//android.view.ViewGroup[@content-desc="DIGGING A SECRET TUNNEL part 3 - 18 minutes - Go to channel - colinfurze - 1.7M views - 12 hours ago - play video"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout
# Click Element    xpath=//android.view.ViewGroup[@content-desc="DIGGING A SECRET TUNNEL part 3 - 18 minutes - Go to channel - colinfurze - 1.7M views - 12 hours ago - play video"]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout
