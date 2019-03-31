//
//  AFOViewController.m
//  AFOStatePattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOStateNormal.h"
#import "AFOStateDisorder.h"
#import "AFOStateSupernormal.h"
#import "AFOContext.h"
#import "AFOBasketballPlayer.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOState *normal = [[AFOStateNormal alloc] init];
    AFOContext *normalContext = [[AFOContext alloc] initWithState:normal];
    AFOBasketballPlayer *james = [[AFOBasketballPlayer alloc] initWithContext:normalContext];
    [james playerState];
    ///---
    AFOState *disorder = [[AFOStateDisorder alloc] init];
    AFOContext *disorderContext = [[AFOContext alloc] initWithState:disorder];
    AFOBasketballPlayer *garage = [[AFOBasketballPlayer alloc] initWithContext:disorderContext];
    [garage playerState];
    ///---
    AFOState *supernormal = [[AFOStateSupernormal alloc] init];
    AFOContext *supernormalContext = [[AFOContext alloc] initWithState:supernormal];
    AFOBasketballPlayer *harden = [[AFOBasketballPlayer alloc] initWithContext:supernormalContext];
    [harden playerState];
}


@end
