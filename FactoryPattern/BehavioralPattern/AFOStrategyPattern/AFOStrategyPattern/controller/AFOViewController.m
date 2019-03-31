//
//  AFOViewController.m
//  AFOStrategyPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOContext.h"
#import "AFOOperationAdd.h"
#import "AFOOperationSubstract.h"
#import "AFOOperationMultiply.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    CGFloat left  = 100;
    CGFloat right = 200;
    ///---
    AFOStrategy *add = [[AFOOperationAdd alloc] init];
    AFOContext *addContext = [[AFOContext alloc] initWithStrategy:add];
    [addContext doOperation:left right:right];
    NSLog(@"%f + %f = %.2f",left,right,[addContext doOperation:left right:right]);
    ///---
    AFOStrategy *substract = [[AFOOperationSubstract alloc] init];
    AFOContext *substractContext = [[AFOContext alloc] initWithStrategy:substract];
    [substractContext doOperation:left right:right];
    NSLog(@"%f - %f = %.2f",left,right,[substractContext doOperation:left right:right]);
    ///---
    AFOStrategy *multiply = [[AFOOperationMultiply alloc] init];
    AFOContext *multiplyContext = [[AFOContext alloc] initWithStrategy:multiply];
    NSLog(@"%f * %f = %.2f",left,right,[multiplyContext doOperation:left right:right]);
}
@end
