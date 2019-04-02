//
//  AFOWindow.m
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOWindow.h"
#import "AFOTouch.h"
@implementation AFOWindow
- (instancetype)initNextSupport:(AFOWindow *)support{
    if (self = [super init]) {
        _nextSupport = support;
    }
    return self;
}
- (void)findRightDeal:(AFOTouch *)touch{
    if (touch.options == AFOTouchConversionNone) {
        NSLog(@"name ====== %@",NSStringFromClass([self class]));
    }else{
        [self.nextSupport findRightDeal:touch];
    }
}
@end
