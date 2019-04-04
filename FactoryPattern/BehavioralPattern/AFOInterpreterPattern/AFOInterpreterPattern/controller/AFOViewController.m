//
//  AFOViewController.m
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOTerminalExpression.h"
#import "AFOOrExpression.h"
#import "AFOAndExpression.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOTerminalExpression *robert = [[AFOTerminalExpression alloc] initWithName:@"Robert" gender:@"male" marriage:@"married"];
    AFOTerminalExpression *john = [[AFOTerminalExpression alloc] initWithName:@"John" gender:@"male" marriage:@"unmarried"];
    AFOTerminalExpression *lucy = [[AFOTerminalExpression alloc] initWithName:@"Lucy" gender:@"female" marriage:@"unmarried"];
    ///---
    AFOExpression *or = [self getMaleExpression:robert another:john];
    AFOExpression *and = [self getMarriedExpression:john another:lucy];
    ///
    NSLog(@"Robert is male ? %d",[or interpretGender:robert.gender]);
    NSLog(@"john is male ? %d",[or interpretGender:john.gender]);
    NSLog(@"Lucy is unmarried ? %d",[and interpretMarriage:lucy.marriage]);
    NSLog(@"Lucy is male ? %d",[and interpretGender:lucy.gender]);
}
- (AFOExpression *)getMaleExpression:(AFOExpression *)first
                             another:(AFOExpression *)second{
    return [[AFOOrExpression alloc] initWith:first another:second];
}
- (AFOAndExpression *)getMarriedExpression:(AFOExpression *)first
                                        another:(AFOExpression *)second{
    return [[AFOAndExpression alloc] initWith:first another:second];
}
@end
