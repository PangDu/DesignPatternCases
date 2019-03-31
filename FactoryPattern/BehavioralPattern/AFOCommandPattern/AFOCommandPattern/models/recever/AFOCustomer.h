//
//  AFOCustomer.h
//  AFOCommandPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOInvoker;
@interface AFOCustomer : NSObject
- (instancetype)initWithInvoker:(AFOInvoker *)invoker;
- (void)customerDoSomeThing;
@end

NS_ASSUME_NONNULL_END
