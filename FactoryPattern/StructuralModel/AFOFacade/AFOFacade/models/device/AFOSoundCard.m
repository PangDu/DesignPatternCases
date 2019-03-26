//
//  AFOSoundCard.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOSoundCard.h"

@implementation AFOSoundCard
- (instancetype)init{
    if (self = [super init]) {
        [self putThroughPowerSupply];
    }
    return self;
}
- (void)playSound{
    NSLog(@"playSound");
}
- (void)stopPlay{
    NSLog(@"sound card stop play");
    [self shutOffPower];
}
@end
