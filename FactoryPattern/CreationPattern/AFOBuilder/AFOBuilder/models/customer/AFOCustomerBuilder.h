//
//  AFOCustomerBuilder.h
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOCustomer;
@interface AFOCustomerBuilder : NSObject
@property (nonatomic, strong, readonly)    AFOCustomer *customer;
- (AFOCustomerBuilder *)builderCustomerId:(NSString *)ids
                                     name:(NSString *)name
                                    phone:(NSString *)phone;
- (AFOCustomerBuilder *)builderCustomersMember:(BOOL)member;
- (AFOCustomerBuilder *)builderCustomersArea:(NSString *)area;
- (AFOCustomerBuilder *)builderCustomersAddress:(NSString *)address;
@end

NS_ASSUME_NONNULL_END
