*** Variables ***
${popup_buyPackage}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/button_cta1"]
${popup_upgrade}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/button_cta1"]
${package_standard}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_package_title_text_view"]

# hamburger-menu
${Click-hamburger-menu}    //android.widget.ImageButton[@content-desc="open drawer"]
${click-button-Buy_package}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_side_menu_item_text_view" and @text="Buy package"]
#package Basic
${Verify-Package-Catetory-basic}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="เบสิก"]
${Select-Package-Basic}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="Basic"]
${Click-buy-package-99/month}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_price_text_view"]
${Confirm-Subscribe}    //android.widget.Button[@resource-id="com.android.vending:id/0_resource_name_obfuscated"]
${Require authentication after Subscribe}    xpath=//android.widget.RadioButton[@text="No, thanks"]
${Check successfully Subscribe}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_title_textView"]
${Select-Basic-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
${Click-buy-package-699/month}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]

# Package Standard
${Verify-Package-Catetory-standard}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="สแตนดาร์ด"]
${Select-Package-standard}    xpath=(//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"])[2]
${Select-Package-standard 299 / month}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]
${Click-Proceed-to-payment}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_ok_button"]
${Select-Standard-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
${Select-Package-standard 2999 / yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_package_button"]

#Click-Start-Watching-after-purchase-success
${Click-Start-Watching}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_ok_button"] 