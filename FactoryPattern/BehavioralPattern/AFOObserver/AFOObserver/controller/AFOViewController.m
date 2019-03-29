//
//  AFOViewController.m
//  AFOObserver
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOCar.h"
#import "AFOObserver.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOCar *car = [[AFOCar alloc] init];
    AFOObserver *observer = [[AFOObserver alloc] init];
    [car addObserver:observer forKeyPath:@"isStart" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    [car setIsStart:YES];
}
@end
