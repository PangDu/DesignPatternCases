//
//  AFOStrategy.m
//  AFOStrategyPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOStrategy.h"

@implementation AFOStrategy
- (float)doOperation:(float)leftOperand rightOperand:(float)rightOperand{
    return (leftOperand + rightOperand);
}
@end
