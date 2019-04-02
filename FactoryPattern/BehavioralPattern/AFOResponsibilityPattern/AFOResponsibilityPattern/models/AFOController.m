//
//  AFOController.m
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOController.h"
#import "AFOTouch.h"
@implementation AFOController
- (void)findRightDeal:(AFOTouch *)touch{
    if (touch.options == AFOTouchConversionController) {
        NSLog(@"name ====== %@",NSStringFromClass([self class]));
    }else{
        [self.nextSupport findRightDeal:touch];
    }
}
@end
