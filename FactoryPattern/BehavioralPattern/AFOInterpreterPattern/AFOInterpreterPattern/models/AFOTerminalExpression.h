//
//  AFOTerminalExpression.h
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOExpression.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFOTerminalExpression : AFOExpression
@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *gender;
@property (nonatomic, copy, readonly) NSString *marriage;
- (instancetype)initWithName:(nonnull NSString *)name
                      gender:(nonnull NSString *)gender
                    marriage:(nonnull NSString *)marriage;
@end

NS_ASSUME_NONNULL_END
