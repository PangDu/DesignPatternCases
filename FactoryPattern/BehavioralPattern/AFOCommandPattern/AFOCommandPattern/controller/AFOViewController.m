//
//  AFOViewController.m
//  AFOCommandPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOStewedFish.h"
#import "AFOColdDishes.h"
#import "AFOBarbecue.h"
#import "AFOInvoker.h"
#import "AFOCustomer.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOCommand *stewedFish = [[AFOStewedFish alloc] init];
    AFOInvoker *stewedFishInvoker = [[AFOInvoker alloc] initWithCommand:stewedFish];
    AFOCustomer *fishCustomer = [[AFOCustomer alloc] initWithInvoker:stewedFishInvoker];
    [fishCustomer customerDoSomeThing];
    ///---
    AFOCommand *coldDishes = [[AFOColdDishes alloc] init];
    AFOInvoker *coldDishesInvoker = [[AFOInvoker alloc] initWithCommand:coldDishes];
    AFOCustomer *coldDishesCustomer = [[AFOCustomer alloc] initWithInvoker:coldDishesInvoker];
    [coldDishesCustomer customerDoSomeThing];
    ///---
    AFOCommand *barbecue = [[AFOBarbecue alloc] init];
    AFOInvoker *barbecueInvoker = [[AFOInvoker alloc] initWithCommand:barbecue];
    AFOCustomer *barbecueCustomer = [[AFOCustomer alloc] initWithInvoker:barbecueInvoker];
    [barbecueCustomer customerDoSomeThing];
}


@end
