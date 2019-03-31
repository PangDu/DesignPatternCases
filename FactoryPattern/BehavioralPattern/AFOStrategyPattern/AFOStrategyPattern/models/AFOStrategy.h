//
//  AFOStrategy.h
//  AFOStrategyPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOStrategy : NSObject
- (float)doOperation:(float)leftOperand rightOperand:(float)rightOperand;
@end

NS_ASSUME_NONNULL_END
