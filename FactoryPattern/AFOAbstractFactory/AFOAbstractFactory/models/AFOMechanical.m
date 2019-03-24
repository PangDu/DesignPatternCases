//
//  AFOMechanical.m
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOMechanical.h"

@implementation AFOMechanical
- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
- (NSString *)getName{
    return NSStringFromClass([self class]);
}
@end
