//
//  O2OAPI.m
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/13/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import "O2OAPI.h"

static O2OAPI *sharedInstance = nil;

@implementation O2OAPI

+ (O2OAPI *)sharedInstance
{
    @synchronized(self)
    {
        if (!sharedInstance) {
            sharedInstance = [[O2OAPI alloc] init];
        }
    }
    return  sharedInstance;

}


+ (NSDictionary *)dictionaryOfStringsFromDictionry:(NSDictionary *)dict
{
    NSMutableDictionary *rectDictionary = [[NSMutableDictionary alloc] initWithCapacity:dict.count];
    NSArray *keys = dict.allKeys;
    for (init i = 0; i < keys.count; i++) {
        id obj;
        if (dict[keys[i]]) {
            <#statements#>
        }
    }
    
    
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
