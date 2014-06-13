//
//  LocationCalculator.h
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/13/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationCalculator : NSObject

+ (instancetype)sharedInstance;

- (CGPoint)originPointFromUpperView:(UIView *)view inCoordinateView:(UIView *)coordinateView;

@end
