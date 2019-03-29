//
//  AFOCPU.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOCPU.h"

@implementation AFOCPU
- (instancetype)init{
    if (self = [super init]) {
        [self putThroughPowerSupply];
    }
    return self;
}
- (void)processingInstruction{
    NSLog(@"cpu processing Instruction");
}
- (void)stopReceive{
    NSLog(@"cpu stop receive");
    [self shutOffPower];
}
@end
