//
//  O2OAPI.h
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/13/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void (^LoginSuccessBlock)(void);
typedef void (^LoginFailureBlock)(void);

typedef void (^SignupSuccessBlock)(void);
typedef void (^SignupFailureBlock)(void);



@interface O2OAPI : NSObject

// 当前的城市名
@property (nonatomic, copy) NSString *currentCityName;

// 选中的城市名
@property (nonatomic, copy) NSString *selectedCityName;


// 用户信息
@property (nonatomic, strong) NSMutableDictionary *userInfomations;


// 用户登录信息
@property (nonatomic, strong) NSMutableDictionary *userLoginInfomations;


@property (nonatomic, assign) BOOL isSaveUserInfomations;

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;



@property (nonatomic, copy) NSString *udid;

//@property (nonatomic, strong) Loction

+ (O2OAPI *)sharedInstance;

- (BOOL)isLogin;

- (void)loadUserInfomationDictionaryAtLocation;

- (void)removeuserInfomationDictionaryAtLocation;

- (void)loadUserLoginInfomation;

- (void)removeuserLoginInfomation;

- (void)makeACallWithPhoneNumber:(NSString *)phoneNumber;

+ (void)currentViewController:(UIView *)view;

+ (NSDictionary *)dictionaryOfStringsFromDictionry:(NSDictionary *)dict;

@end
