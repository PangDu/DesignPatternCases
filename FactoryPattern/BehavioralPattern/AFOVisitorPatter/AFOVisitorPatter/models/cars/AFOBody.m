//
//  AFOBody.m
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBody.h"

@implementation AFOBody
- (void)acceptAction:(AFOVisitor *)visitor{
}
#pragma mark ------ property
- (NSString *)strName{
    return @"This is body!";
}
@end
