
*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Library          AppiumLibrary


*** Variables ***
# Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        8.1
${DEVICE_NAME}             nexus
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2

## variaveis do aplicativo
${BTN_LOGIN}             accessibility_id=Account
${BTN_SINGIN}            button 
${BTN_ADD}               accessibility_id=Add account
${INSERT_EMAIL}          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
${BTN_NEXT}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
${INSERT_PSW}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText
${password}              #DIGITE UMA SENHA         
${BTN_IGREE}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
${BTN_MORE}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
${BTN_ACCEPT}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
${CLICK_TRENDING}        accessibility_id=Trending
# start_x_311
# start_y_1046
# offset_x_488
# offset_y_325
# duration=1000


*** Keywords ***
Abrir o aplicativo no celular
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                  platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}  


Logar no aplicativo com a conta "${email}" 
    
    Wait Until Element Is Visible       ${BTN_LOGIN}   20     
    Click Element                       ${BTN_LOGIN}           
    
    Wait Until Element Is Visible       ${BTN_SINGIN}  20
    Click Element                       ${BTN_SINGIN}  

    Wait Until Element Is Visible       ${BTN_ADD}     20
    Click Element                       ${BTN_ADD}  

    Wait Until Element Is Visible       ${INSERT_EMAIL}       20
    Input Text                          ${INSERT_EMAIL}       ${email}       

    Wait Until Element Is Visible       ${BTN_NEXT}        20
    Click Element                       ${BTN_NEXT}      

    Wait Until Element Is Visible       ${INSERT_PSW}      20
    Input Text                          ${INSERT_PSW}      ${password}
    Press Keycode                       66
    
    Wait Until Element Is Visible      ${BTN_IGREE}        20
    click Element                      ${BTN_IGREE} 

    Wait Until Element Is Visible      ${BTN_MORE}         20
    click Element                      ${BTN_MORE}

    Wait Until Element Is Visible      ${BTN_ACCEPT}      20
    click Element                      ${BTN_ACCEPT} 


Entrar no menu Trending

    Wait Until Element Is Visible      ${CLICK_TRENDING}      20
    click Element                      ${CLICK_TRENDING}

Usar swipe de tela até o 10 item da tela
# start_x    311
# start_y    1046
# offset_x    488
# offset_y    325
# duration=1000

    Swipe    311    1046    488    325
    # Swipe    287    1064    416    161
    # Swipe    204    1048    432    190
    # Swipe    275    1041    394    87
    # Swipe    219    1059    360    83

Clicar no vídeo
 
# # accessibility id=Account
# Click Element    accessibility id=Account
# # id=com.google.android.youtube:id/button
# Click Element    id=com.google.android.youtube:id/button
# # accessibility id=Add account
# Click Element    accessibility id=Add account
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
# Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText    viniciussweber@hotmail.com
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText
# Input Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText    vinicius13
# Tap    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText    703    1122
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# # xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
# # accessibility id=Trending
# Click Element    accessibility id=Trending
# Swipe    311    1046    488    325
# Swipe    287    1064    416    161
# Swipe    204    1048    432    190
# Swipe    275    1041    394    87
# Swipe    219    1059    360    83

# # xpath=//android.view.ViewGroup[@content-desc="Dream - Minecraft Manhunt Extra Scenes (5 Hunters Rematch) - 11 minutes - Go to channel - DreamXD - 2.2M views - 2 days ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
# Click Element    xpath=//android.view.ViewGroup[@content-desc="Dream - Minecraft Manhunt Extra Scenes (5 Hunters Rematch) - 11 minutes - Go to channel - DreamXD - 2.2M views - 2 days ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
