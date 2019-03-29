//
//  AFOViewController.m
//  AFOTemplatePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFODodishTemplate.h"
#import "AFOScrambledEggForTomato.h"
#import "AFOBraisedPork.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFODodishTemplate *tomato = [[AFOScrambledEggForTomato alloc] init];
    [tomato completeProcess];
    ///---
    AFOBraisedPork *pork = [[AFOBraisedPork alloc] init];
    [pork completeProcess];
}


@end
