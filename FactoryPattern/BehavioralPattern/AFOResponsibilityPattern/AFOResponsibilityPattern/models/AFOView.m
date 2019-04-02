//
//  AFOView.m
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOView.h"
#import "AFOTouch.h"

@implementation AFOView
- (void)findRightDeal:(AFOTouch *)touch{
    if (touch.options == AFOTouchConversionView) {
        NSLog(@"name ====== %@",NSStringFromClass([self class]));
    }else{
        [self.nextSupport findRightDeal:touch];
    }
}
@end
