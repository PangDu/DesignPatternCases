//
//  AFOBuilderModel.m
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBuilderModel.h"
#import "AFOCustomer.h"
#import "AFOCustomerBuilder.h"
@implementation AFOBuilderModel
- (AFOCustomer *)createCustomer:(AFOCustomerBuilder *)customerBuilder{
    return customerBuilder.customer;
}
- (AFOCustomer *)createOneCustomer:(AFOCustomerBuilder *)customerBuilder{
    [customerBuilder builderCustomerId:@"000001" name:@"张三" phone:@"1101201919"];
    [customerBuilder builderCustomersAddress:@"天安门"];
    return customerBuilder.customer;
}
@end
