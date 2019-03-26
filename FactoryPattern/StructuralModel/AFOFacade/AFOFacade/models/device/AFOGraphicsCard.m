//
//  AFOGraphicsCard.m
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOGraphicsCard.h"

@implementation AFOGraphicsCard
- (instancetype)init{
    if (self = [super init]) {
        [self putThroughPowerSupply];
    }
    return self;
}
- (void)showImages{
    NSLog(@"GraphicsCard show Images");
}
- (void)stopShow{
    NSLog(@"graphics card stop ");
    [self shutOffPower];
}
@end
