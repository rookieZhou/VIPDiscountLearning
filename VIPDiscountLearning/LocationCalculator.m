//
//  LocationCalculator.m
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/13/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import "LocationCalculator.h"
#import "Constants.h"
#import "ACMacros.h"

#define VIEWWIDTH  140

@implementation LocationCalculator


+ (LocationCalculator *)sharedInstance
{
    static LocationCalculator *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

//下方右对齐
- (CGPoint)originPointFromUpperView:(UIView *)view
                   inCoordinateView:(UIView *)coordinateView
{
    CGFloat originXcoordinate = MaxX(view) - VIEWWIDTH;
    CGFloat originYcoordinate = MaxY(view);
    CGPoint point =  CGPointMake(originXcoordinate, originYcoordinate);
    CGPoint orginPoint = [coordinateView convertPoint:point fromView:view.superview];
    return orginPoint;
    
}

@end
