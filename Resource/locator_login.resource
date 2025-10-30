*** Variables ***
${login_button}     //android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_onboarding_login_button"]
${login_input_username}     //androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.widget.EditText[1]
${login_input_password}     //androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.widget.EditText[2]
${login_button_inside}     //androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View[1]/android.widget.Button
${choose_profile_manage}    //android.widget.TextView[@text="Choose profile"]
${back_profile _manage}    //android.widget.ImageButton[@content-desc="Navigate up"]
${login_incorrect}     //android.widget.ImageView[@content-desc="warning"]
${login_changepackage}     //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_buy_package_title_text_view"]
${back_package}    //android.widget.ImageButton[@content-desc="Navigate up"]
${skip_login}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_onboarding_skip_button"]