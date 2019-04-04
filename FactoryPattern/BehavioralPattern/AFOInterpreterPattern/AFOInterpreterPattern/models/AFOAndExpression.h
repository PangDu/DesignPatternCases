//
//  AFOAndExpression.h
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOExpression.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFOAndExpression : AFOExpression
- (instancetype)initWith:(AFOExpression *)first
                 another:(AFOExpression *)another;
@end

NS_ASSUME_NONNULL_END
