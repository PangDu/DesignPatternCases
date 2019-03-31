//
//  AFOBasketballPlayer.m
//  AFOStatePattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBasketballPlayer.h"
#import "AFOContext.h"

@interface AFOBasketballPlayer ()
@property (nonatomic, strong) AFOContext *context;
@end

@implementation AFOBasketballPlayer
- (instancetype)initWithContext:(AFOContext *)context{
    if (self = [super init]) {
        _context = context;
    }
    return self;
}
- (void)playerState{
    [self.context contextStateAction];
}
#pragma mark ------ property
- (AFOContext *)context{
    if (!_context) {
        _context = [[AFOContext alloc] init];
    }
    return _context;
}
@end
