//
//  Constants.h
//  O2O
//
//  Created by Leafc on 13-10-23.
//  Copyright (c) 2013年 leafc. All rights reserved.
//

#ifndef O2O_Constants_h
#define O2O_Constants_h

#define isTest 0

#define UmengAppkey @"525b669f56240bcc870eaa5f"
//#define WXAppkey    @"wx41708e5db2a306cc"
#define WXAppkey    @"wx5575d8a20e00dc1e"
#define QQAppkey    @"101008408"
#define BaiduMapKey @"uIa87AVZ2nI3MkWjXlZq8ZPp"
#define aMapKey @"c9e94c8d78bab15d37dfa3483d8dbbe6"

#define kNotification_LoginSuccess @"loginSuccess"
#define kNotification_LoginCancel @"loginCancel"
#define kNotification_CitySelected @"citySelected"
#define kNotification_CityLocation @"cityLocation"
#define kNotification_HeadImageEdited @"headImageEdited"
#define kNotification_LogoutSuccess @"logoutSuccess"


// app store
#define kAppStoreUrl @"https://itunes.apple.com/app/id"

// app store 评分连接
#define kAppStoreEvaluateUrl @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id="

// appication apple id
#define kAppicationAppleId @"826277843"

// forget password url
#define kForgetPasswordUrl @"http://my.vipshop.com/profile/passwordForget.php"

#define kTel @"4006-789-888"

#define kUserAgreementUrl   @"http://o.vip.com/v2/Community/UserProtocol"

// top menu
#define kMenuColor_bg           RGBACOLOR(238, 239, 243, 1.0)
#define kMenuColor_selectbg     UIColorFromRGB(0xF4AD03)
#define kMenuColor_border       UIColorFromRGB(0xF4AD03)
#define kMenuColor_font         UIColorFromRGB(0xF4AD03)
#define kMenuColor_fontSelected RGBACOLOR(255, 255, 255, 1.0)
#define kMenuFont_default       [UIFont boldSystemFontOfSize:15]
#define kMenuFont_selected      [UIFont boldSystemFontOfSize:15]
#define kMenu_height            35.0

// font color
#define kFontColor_Navigation       UIColorFromRGB(0xE0E0E0)//导航栏、底部菜单栏
#define kFontColor_Distinctive      UIColorFromRGB(0x2F2E30)//用户名称、标题、突出文字信息、对话信息、输入文字
#define kFontColor_Title            UIColorFromRGB(0x515151)//标题
#define kFontColor_Content          UIColorFromRGB(0x515151)//用户资料、普通内容文字、点赞头像显示数字
#define kFontColor_Description      UIColorFromRGB(0xA2A2A2)//日期、距离、弱化性说明文字、灰底按钮文字、顶部搜索条
#define kFontColor_placeholder      UIColorFromRGB(0xC8C8CD)//输入框提示文字
#define kFontColor_Button           UIColorFromRGB(0xFFFFFF)//彩色按钮反白文字
#define kFontColor_Link             UIColorFromRGB(0x245F93)//蓝色链接文字
#define kFontColor_RedDistinctive   UIColorFromRGB(0xFF5252)//红色突出提示文字
#define kFontColor_YellowLink       UIColorFromRGB(0xF4AD03)//黄色链接文字


#define kFontColor_refresh          UIColorFromRGB(0xa2a2a2)//刷新控件文字
#define kFontColor_MainMenuText     RGBACOLOR(255, 255, 255, .8)//菜单




// font
#define kFont_Distinctive        [UIFont systemFontOfSize:15]
#define kFont_Distinctive_bold   [UIFont boldSystemFontOfSize:15]
#define kFont_Title         [UIFont systemFontOfSize:15]
#define kFont_Content       [UIFont systemFontOfSize:13]
#define kFont_Description   [UIFont systemFontOfSize:12]
#define kFont_BottomBarText [UIFont systemFontOfSize:10]

// color
#define kColor_Content RGBACOLOR(255, 255, 255, 1.0)
#define kColor_SearchTextBackgroundColor [UIColor colorWithWhite:1 alpha:0.2]
#define kColor_CancelButtonBackgroundColor [UIColor colorWithWhite:0 alpha:0.3]
#define kColor_Separator [UIColor colorWithWhite:1 alpha:0.2]
#define kColor_MenuCell_N   RGBACOLOR(0, 0, 0, .7)
#define kColor_MenuCell_P   RGBACOLOR(0, 0, 0, .8)
#define kColor_Cell_N       RGBACOLOR(0, 0, 0, .3)
#define kColor_Cell_P       RGBACOLOR(0, 0, 0, .5)
#define kColor_SelectionCell_N  RGBACOLOR(0, 0, 0, .4)
#define kColor_SelectionCell_P  RGBACOLOR(0, 0, 0, .5)
#define kColor_CommendCell_N    RGBACOLOR(0, 0, 0, .3)
// line color
#define kColor_line UIColorFromRGB(0xC8C7CC)
#define kColor_dark_line UIColorFromRGB(0x42403E)

#pragma mark - O2O v2 


// button background color
#define kColor_btn_yellow_bg_n  UIColorFromRGB(0xF4AD03)
#define kColor_btn_yellow_bg_p  UIColorFromRGB(0xD39500)
#define kColor_btn_green_bg_n   UIColorFromRGB(0x2BB559)
#define kColor_btn_green_bg_p   UIColorFromRGB(0x219D4A)
#define kColor_btn_gray_bg_n    UIColorFromRGB(0xE6E6E6)
#define kColor_btn_gray_bg_p    UIColorFromRGB(0xCFCFCF)
#define kColor_btn_red_bg_n     UIColorFromRGB(0xFF5252)
#define kColor_btn_red_bg_p     UIColorFromRGB(0xF23333)

#define kColor_NavigationBar    UIColorFromRGB(0x1A1613)
#define kColor_Navigation_BarButton_Highlight UIColorFromRGB(0x0D0B09)


//Radius

#define kRadius 2.5f
#define kRadius_Image 2.0f

// official documents and correspondence
#define kContent_Loading        @"正在加载..."
#define kContent_Logining       @"正在登陆..."
#define kContent_Signuping      @"正在提交..."
#define KContent_LoadingFailed  @"网络错误或服务器忙"
#define kContent_LoginSuccess   @"登陆成功"
#define kContent_SignupSuccess  @"注册成功"
#define kContent_FeedbackSubmit @"正在提交..."

// toast position
#define kToast_Position         @"bottom"
#define kToast_Duration         2.f



#endif
