//
//  AFOViewController.m
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOWindow.h"
#import "AFOController.h"
#import "AFOView.h"
#import "AFOTouch.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOTouch *viewTouch = [[AFOTouch alloc] initWithType:AFOTouchConversionView];
    AFOWindow *view = [[AFOView alloc] init];
    AFOController *controller = [[AFOController alloc] initNextSupport:view];
    AFOWindow *window = [[AFOWindow alloc] initNextSupport:controller];
    [window findRightDeal:viewTouch];
}


@end
