//
//  AFOOriginator.m
//  AFOMementoPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOOriginator.h"
#import "AFOMemento.h"

@implementation AFOOriginator
- (instancetype)initWithState:(NSString *)state{
    if (self = [super init]) {
        _strState = state;
    }
    return self;
}
- (void)settingMemento:(AFOMemento *)memento{
    self.strState = memento.strState;
}
- (void)showState{
    NSLog(@"state ====== %@", self.strState);
}
@end
