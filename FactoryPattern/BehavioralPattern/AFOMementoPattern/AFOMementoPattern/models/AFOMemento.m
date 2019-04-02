//
//  AFOMemento.m
//  AFOMementoPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOMemento.h"

@implementation AFOMemento
- (instancetype)initWithState:(NSString *)state{
    if (self = [super init]) {
        _strState = state;
    }
    return self;
}
@end
