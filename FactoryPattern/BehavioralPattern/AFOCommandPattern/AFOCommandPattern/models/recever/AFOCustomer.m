//
//  AFOCustomer.m
//  AFOCommandPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCustomer.h"
#import "AFOInvoker.h"

@interface AFOCustomer ()
@property (nonatomic, strong) AFOInvoker *invoker;
@end

@implementation AFOCustomer
- (instancetype)initWithInvoker:(AFOInvoker *)invoker{
    if (self = [super init]) {
        _invoker = invoker;
    }
    return self;
}
- (void)customerDoSomeThing{
    [self.invoker invokerAction];
}
#pragma mark ------ property
- (AFOInvoker *)invoker{
    if (!_invoker) {
        _invoker = [[AFOInvoker alloc] init];
    }
    return _invoker;
}
@end
