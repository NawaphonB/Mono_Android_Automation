*** Variables ***
# ${popup_buyPackage}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/button_cta1"]
# ${popup_upgrade}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/button_cta1"]
# ${package_standard}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_package_title_text_view"]

# # hamburger-menu
# ${Click-hamburger-menu}    //android.widget.ImageButton[@content-desc="open drawer"]
# ${Click-button-Buy_package}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_side_menu_item_text_view" and @text="Buy package"]
# ${verify_package_category}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_buy_package_title_text_view"]
# #package Basic
# ${Verify-Package-Catetory-basic}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="เบสิก"]
# ${Select-Package-Basic}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="Basic"]
# ${Click-buy-package-99/month}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_price_text_view"]
# ${Confirm-Subscribe}    //android.widget.Button[@resource-id="com.android.vending:id/0_resource_name_obfuscated"]
# ${Require authentication after Subscribe}    xpath=//android.widget.RadioButton[@text="No, thanks"]
# ${Check successfully Subscribe}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_ok_button"]
# ${Select-Basic-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
# ${Click-buy-package-699/year}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_price_text_view"]
# # Package Standard
# ${Verify-Package-Catetory-standard}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="สแตนดาร์ด"]
# ${Select-Package-standard}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_title_text_view" and @text="Standard"]
# ${Select-Package-standard 299 / month}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_price_text_view"]
# ${Select-Standard-yearly}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/mb_package_yearly_button"]
# ${Select-Package-standard 2999 / yearly}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_price_text_view"]

# ${all_package}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/mb_package_category_text_view"]
# ${click_settings}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_side_menu_item_text_view" and @text="Settings"]
# ${click_account}    //android.widget.TextView[@resource-id="com.doonung.activity.staging:id/cell_mb_side_menu_item_text_view" and @text="Account"]
# ${renew}    //android.widget.Button[@resource-id="com.doonung.activity.staging:id/cell_mb_account_menu_buy_package_button"]



# internal
${package_standard}    //android.widget.TextView[@resource-id="com.doonung.activity:id/mb_package_title_text_view"]

# hamburger-menu
${Click-hamburger-menu}    //android.widget.ImageButton[@content-desc="open drawer"]
${Click-button-Buy_package}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_side_menu_item_text_view" and @text="Buy package"]
${package_category}    //android.widget.TextView[@resource-id="com.doonung.activity:id/mb_buy_package_title_text_view"]
#package Basic
${Verify-Package-Catetory-basic}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_title_text_view" and @text="เบสิก"]
${Select-Package-Basic}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_title_text_view" and @text="Basic"]
${Click-buy-package-99/month}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_price_text_view"]
${Confirm-Subscribe}    //android.widget.Button[@resource-id="com.android.vending:id/0_resource_name_obfuscated"]
${Require authentication after Subscribe}    xpath=//android.widget.RadioButton[@text="No, thanks"]
${Check successfully Subscribe}    //android.widget.Button[@resource-id="com.doonung.activity:id/mb_ok_button"]
${Select-Basic-yearly}    xpath=//android.widget.Button[@resource-id="com.doonung.activity:id/mb_package_yearly_button"]
${Click-buy-package-699/year}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_price_text_view"]
# Package Standard
${Verify-Package-Catetory-standard}    xpath=//android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_title_text_view" and @text="สแตนดาร์ด"]
${Select-Package-standard}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_title_text_view" and @text="Standard"]
${Select-Package-standard 299 / month}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_price_text_view"]
${Select-Standard-yearly}    //android.widget.Button[@resource-id="com.doonung.activity:id/mb_package_yearly_button"]
${Select-Package-standard 2999 / yearly}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_price_text_view"]

${all_package}    //android.widget.TextView[@resource-id="com.doonung.activity:id/mb_package_category_text_view"]
${click_settings}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_side_menu_item_text_view" and @text="Settings"]
${click_account}    //android.widget.TextView[@resource-id="com.doonung.activity:id/cell_mb_side_menu_item_text_view" and @text="Account"]
${renew}    //android.widget.Button[@resource-id="com.doonung.activity:id/cell_mb_account_menu_buy_package_button"]
