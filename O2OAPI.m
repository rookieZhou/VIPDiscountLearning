//
//  O2OAPI.m
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/13/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import "O2OAPI.h"
#import "Constants.h"

static O2OAPI *sharedInstance = nil;

@implementation O2OAPI

+ (O2OAPI *)sharedInstance
{
    @synchronized(self)
    {
        if (!sharedInstance) {
            sharedInstance = [[O2OAPI alloc] init];
            self.locationController = [NSMutableArray]
        }
    }
    return  sharedInstance;

}

- (instancetype)init
{
    if (self = [super init]) {
        self.selectedCityName = @"广州";
        //是否保存用户信息
        self.isSaveUserInfomations = YES;
        [self loadUserLoginInfomation];
        
    }
    return self;
}

- (void)loadUserLoginInfomation
{
    self.userInfomations = [NSUserDefaults standardUserDefaults] objectForKey:@""

}



- (void)setCurrentCityName:(NSString *)currentCityName
{
    if (_currentCityName != currentCityName) {
        _currentCityName = nil;
        _currentCityName = currentCityName;
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification_CitySelected
                                                        object:nil];
}

- (void)setSelectedCityName:(NSString *)selectedCityName
{
    if(_selectedCityName != selectedCityName){
        _selectedCityName = nil;
        _selectedCityName = selectedCityName;
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification_CityLocation
                                                        object:nil];
    


}


+ (NSDictionary *)dictionaryOfStringsFromDictionry:(NSDictionary *)dict
{
    

    
    return dict;
}

- (BOOL)isLogin
{
    BOOL isLogin = NO;
    if (self.userInfomations) {
        return isLogin = YES;
    }else{
        return isLogin = NO;
    }

}

- (void)loadUserInfomationDictionaryAtLocation
{
    



}



@end
