//
//  AFOCustomerBuilder.m
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCustomerBuilder.h"
#import "AFOCustomer.h"
@interface AFOCustomerBuilder ()
@property (nonatomic, strong, readwrite)    AFOCustomer *customer;
@end

@implementation AFOCustomerBuilder
- (AFOCustomerBuilder *)builderCustomer{
    return self;
}
- (AFOCustomerBuilder *)builderCustomerId:(NSString *)ids
                                     name:(NSString *)name
                                    phone:(NSString *)phone{
    self.customer.strId = ids;
    self.customer.strName = name;
    self.customer.strPhone = phone;
    return self;
}
- (AFOCustomerBuilder *)builderCustomersMember:(BOOL)member{
    self.customer.isMembers = member;
    return self;
}
- (AFOCustomerBuilder *)builderCustomersArea:(NSString *)area{
    self.customer.strArea = area;
    return self;
}
- (AFOCustomerBuilder *)builderCustomersAddress:(NSString *)address{
    self.customer.strAddress = address;
    return self;
}
#pragma mark ------ property
- (AFOCustomer *)customer{
    if (!_customer) {
        _customer = [[AFOCustomer alloc] init];
    }
    return _customer;
}
@end
