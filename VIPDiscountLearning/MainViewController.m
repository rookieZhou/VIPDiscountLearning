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
    [addButton addTarget:(id)self action:@selector(buttonTouchUpInsideEventHandle:) forControlEvents:UIControlEventTouchUpInside];
    [addButton addTarget:(id)self action:@selector(bu) forControlEvents:UIControlEventTouchUpOutside];
    
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;

}


#pragma mark - 按钮的action响应
- (void)buttonTouchDownEventHandle:(UIButton *)button
{
    button.backgroundColor = kColor_Navigation_BarButton_Highlight;

}

- (void)buttonTouchUpInsideEventHandle:(UIButton *)button
{
    button.backgroundColor = UIColorFromRGB(<#rgbValue#>);
}





#pragma mark -  内存警告
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
