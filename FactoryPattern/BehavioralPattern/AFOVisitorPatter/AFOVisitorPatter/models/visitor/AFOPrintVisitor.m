//
//  AFOPrintVisitor.m
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOPrintVisitor.h"
#import "AFOVisitable.h"
@implementation AFOPrintVisitor
- (void)printVisitable:(AFOVisitable *)visitable{
    NSLog(@"visitable ==== %@",visitable.strName);
}
@end
