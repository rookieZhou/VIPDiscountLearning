//
//  MainViewController.m
//  VIPDiscountLearning
//
//  Created by jeff zhou on 6/11/14.
//  Copyright (c) 2014 jeff.zhou. All rights reserved.
//

#import "MainViewController.h"
#import "Constants.h"
#import "ACMacros.h"
#import "LocationCalculator.h"
#import "PCStackMenu.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addBarButtonItem];
    

    
}


#pragma mark - 自定义方法
- (void)addBarButtonItem
{
    UIButton *addButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [addButton setImage:[UIImage imageNamed:@"addButtonIcon"] forState:UIControlStateNormal];
    addButton.backgroundColor = [UIColor clearColor];
    [addButton addTarget:(id)self action:@selector(buttonTouchDownEventHandle:) forControlEvents:UIControlEventTouchDown];
    [addButton addTarget:(id)self action:@selector(addButtonTouchUpInsideEventHandle:) forControlEvents:UIControlEventTouchUpInside];
    [addButton addTarget:(id)self action:@selector(buttonTouchUpOutsideEventHandle:) forControlEvents:UIControlEventTouchUpOutside];
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:addButton];
    
    UIButton *moreButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [moreButton setImage:[UIImage imageNamed:@"moreButtonIcon"] forState:UIControlStateNormal];
    moreButton.backgroundColor = [UIColor clearColor];
    [moreButton addTarget:(id)self action:@selector(buttonTouchDownEventHandle:) forControlEvents:UIControlEventTouchDown];
    [moreButton addTarget:(id)self action:@selector(moreButtonTouchupEventHandle:) forControlEvents:UIControlEventTouchUpInside];
    [moreButton addTarget:(id)self action:@selector(buttonTouchUpOutsideEventHandle:) forControlEvents:UIControlEventTouchUpOutside];
    UIBarButtonItem *moreButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moreButton];

    self.navigationItem.rightBarButtonItems = @[addButtonItem, moreButtonItem];
    
}


#pragma mark - 按钮的action响应
- (void)buttonTouchDownEventHandle:(UIButton *)button
{
    button.backgroundColor = kColor_Navigation_BarButton_Highlight;

}


- (void)buttonTouchUpOutsideEventHandle:(UIButton *)button
{
    button.backgroundColor = [UIColor clearColor];
}

- (void)addButtonTouchUpInsideEventHandle:(UIButton *)button
{
    button.backgroundColor = [UIColor clearColor];
    CGPoint originPoint = [[LocationCalculator sharedInstance] originPointFromUpperView:button inCoordinateView:self.view];
    NSLog(@"%f %f", originPoint.x, originPoint.y);
    
    
//    [PCStackMenu showStackMenuWithTitles:[NSArray arrayWithObjects:@"Setting", @"Search", @"Twitter", @"Message", @"Share", @"More ...", nil]
//                              withImages:[NSArray arrayWithObjects:[UIImage imageNamed:@"gear@2x.png"], [UIImage imageNamed:@"magnifier@2x.png"], [UIImage imageNamed:@"twitter@2x.png"], [UIImage imageNamed:@"speech@2x.png"], [UIImage imageNamed:@"actions@2x"], nil]
//                            atStartPoint:CGPointMake(button.frame.origin.x + button.frame.size.width, button.frame.origin.y)
//                                  inView:self.view
//                              itemHeight:40
//                           menuDirection:PCStackMenuDirectionClockWiseUp
//                            onSelectMenu:^(NSInteger selectedMenuIndex) {
//                                NSLog(@"menu index : %d", selectedMenuIndex);
//                            }];




}

- (void)moreButtonTouchupEventHandle:(UIButton *)button
{
    button.backgroundColor = [UIColor clearColor];
}







#pragma mark -  内存警告
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
