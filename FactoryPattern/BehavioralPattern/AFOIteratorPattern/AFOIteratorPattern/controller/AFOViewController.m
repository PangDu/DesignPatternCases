//
//  AFOViewController.m
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOBook.h"
#import "AFOBookAggregateImpl.h"
#import "AFOBookIterator.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOBook *evil = [[AFOBook alloc] initWithName:@"Evil sword spectrum" price:30];
    AFOBook *sunflower = [[AFOBook alloc] initWithName:@"Sunflower treasure dian" price:35.4];
    AFOBook *alkaloids = [[AFOBook alloc] initWithName:@"Sun alkaloids" price:100];
    AFOBook *nine = [[AFOBook alloc] initWithName:@"Nine Yin true through" price:25];
    ///---
    AFOBookAggregateImpl *aggregate = [[AFOBookAggregateImpl alloc] init];
    [aggregate addCourse:evil];
    [aggregate addCourse:sunflower];
    [aggregate addCourse:alkaloids];
    [aggregate addCourse:nine];
    ///---
    AFOIterator *iterator = [aggregate getBookIterator];
    ///---
    while (![iterator isLast]) {
        NSLog(@"%@",[iterator nextBook]);
    }
}


@end
