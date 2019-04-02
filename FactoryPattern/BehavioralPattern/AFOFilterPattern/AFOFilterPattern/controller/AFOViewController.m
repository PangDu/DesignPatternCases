//
//  AFOViewController.m
//  AFOFilterPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOPerson.h"
#import "AFOCriteriaMale.h"
#import "AFOCriteriaFemale.h"

@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOPerson *Robert = [[AFOPerson alloc] initWithName:@"Robert" gender:@"MALE"];
    AFOPerson *Laura = [[AFOPerson alloc] initWithName:@"Laura" gender:@"FEMALE"];
    AFOPerson *Bobby = [[AFOPerson alloc] initWithName:@"Bobby" gender:@"MALE"];
    AFOPerson *Mike = [[AFOPerson alloc] initWithName:@"Mike" gender:@"FEMALE"];
    ///---
    NSArray *array = @[Robert,Laura,Bobby,Mike];
    ///---
    AFOCriteria *male = [[AFOCriteriaMale alloc] init];
    [[male meetCriteria:array] enumerateObjectsUsingBlock:^(AFOPerson * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"name ====== %@", obj.name);
        NSLog(@"gender ====== %@", obj.gender);
    }];
    ///---
    NSLog(@"------------------------");
    ///---
    AFOCriteria *female = [[AFOCriteriaFemale alloc] init];
    [[female meetCriteria:array] enumerateObjectsUsingBlock:^(AFOPerson * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"name ====== %@", obj.name);
        NSLog(@"gender ====== %@", obj.gender);
    }];
}


@end
