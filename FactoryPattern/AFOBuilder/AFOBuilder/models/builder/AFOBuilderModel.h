//
//  AFOBuilderModel.h
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOCustomer,AFOCustomerBuilder;
@interface AFOBuilderModel : NSObject
- (AFOCustomer *)createCustomer:(AFOCustomerBuilder *)customerBuilder;
- (AFOCustomer *)createOneCustomer:(AFOCustomerBuilder *)customerBuilder;
@end

NS_ASSUME_NONNULL_END
