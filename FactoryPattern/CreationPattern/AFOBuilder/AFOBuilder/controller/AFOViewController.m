//
//  AFOViewController.m
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOCustomer.h"
#import "AFOBuilderModel.h"
#import "AFOCustomerBuilder.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOCustomerBuilder *builder = [[AFOCustomerBuilder alloc] init];
    AFOBuilderModel *builderModel = [[AFOBuilderModel alloc] init];
    AFOCustomer *customer = [builderModel createOneCustomer:builder];
    [customer logCustomer];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
