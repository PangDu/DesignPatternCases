//
//  AFOContext.h
//  AFOStrategyPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOStrategy;
@interface AFOContext : NSObject
- (instancetype)initWithStrategy:(AFOStrategy *)strategy;
- (float)doOperation:(float)left right:(float)right;
@end

NS_ASSUME_NONNULL_END
