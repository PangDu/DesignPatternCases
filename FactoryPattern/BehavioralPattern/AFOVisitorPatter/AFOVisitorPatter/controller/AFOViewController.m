//
//  AFOViewController.m
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOCars.h"
#import "AFOPrintVisitor.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOVisitor *print = [[AFOPrintVisitor alloc] init];
    AFOCars *cars = [[AFOCars alloc] init];
    [cars acceptAction:print];
}


@end
