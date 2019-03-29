//
//  AFODepartment.m
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFODepartment.h"

@implementation AFODepartment
- (NSString *)description{
    NSString *strName = [NSString stringWithFormat:@"-- %@ --",self.strName];
    NSLog(@"%@",strName);
    return strName;
}
@end
