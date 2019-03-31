//
//  AFOContext.m
//  AFOStrategyPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOContext.h"
#import "AFOStrategy.h"

@interface AFOContext ()
@property (nonatomic, strong) AFOStrategy *strategy;
@end

@implementation AFOContext
- (instancetype)initWithStrategy:(AFOStrategy *)strategy{
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}
- (float)doOperation:(float)left right:(float)right{
   return  [self.strategy doOperation:left rightOperand:right];
}
#pragma mark ------ property
- (AFOStrategy *)strategy{
    if (!_strategy) {
        _strategy = [[AFOStrategy alloc] init];
    }
    return _strategy;
}
@end
