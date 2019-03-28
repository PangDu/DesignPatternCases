//
//  AFOViewController.m
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOBread.h"
#import "AFOShreddedCake.h"
#import "AFOMeatClipBuns.h"
#import "AFOIngredients.h"
#import "AFOChicken.h"
#import "AFOHam.h"
#import "AFOEgg.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOShreddedCake *shareddedCake = [[AFOShreddedCake alloc] init];
    NSLog(@"%@",[shareddedCake description]);
    ///---
    AFOChicken *chicken = [[AFOChicken alloc] init];
    shareddedCake = (AFOShreddedCake *)[chicken addIngredients:shareddedCake];
    NSLog(@"%@",[shareddedCake description]);
    ///---
    AFOHam *ham = [[AFOHam alloc] init];
    shareddedCake = (AFOShreddedCake *)[ham addIngredients:shareddedCake];
    NSLog(@"%@",[shareddedCake description]);
    ///---
    AFOEgg *egg = [[AFOEgg alloc] init];
    shareddedCake = (AFOShreddedCake *)[egg addIngredients:shareddedCake];
    NSLog(@"%@",[shareddedCake description]);
}


@end
