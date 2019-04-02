//
//  AFOWheel.m
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOWheel.h"

@implementation AFOWheel
- (void)acceptAction:(AFOVisitor *)visitor{
    
}
- (NSString *)strName{
    return [NSString stringWithFormat:@"The have %@",[self.array componentsJoinedByString:@"、"]];
}
- (NSArray *)array{
    return @[@"front left",
             @"front right",
             @"back left",
             @"back right"];
}
@end
