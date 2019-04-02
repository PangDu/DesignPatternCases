//
//  AFOTouch.m
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOTouch.h"

@implementation AFOTouch
- (instancetype)initWithType:(AFOTouchConversionOptions)type{
    if (self = [super init]) {
        _options = type;
    }
    return self;
}
@end
