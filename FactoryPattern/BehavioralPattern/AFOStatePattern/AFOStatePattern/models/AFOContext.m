//
//  AFOContext.m
//  AFOStatePattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOContext.h"
#import "AFOState.h"

@interface AFOContext ()
@property (nonatomic, strong) AFOState *state;
@end

@implementation AFOContext
- (instancetype)initWithState:(AFOState *)state{
    if (self = [super init]) {
        _state = state;
    }
    return self;
}
- (void)contextStateAction{
    [self.state doStateAction];
}
#pragma mark ------ property
- (AFOState *)state{
    if (!_state) {
        _state = [[AFOState alloc] init];
    }
    return _state;
}
@end
