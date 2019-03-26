//
//  AFOFan.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFan.h"

@implementation AFOFan
- (instancetype)init{
    if (self = [super init]) {
        [self putThroughPowerSupply];
    }
    return self;
}
- (void)turn{
    NSLog(@"fan turn");
}
- (void)stop{
    [self shutOffPower];
    NSLog(@"fan stop");
}
@end
