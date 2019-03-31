//
//  AFOInvoker.m
//  AFOCommandPattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOInvoker.h"
#import "AFOCommand.h"

@interface AFOInvoker ()
@property (nonatomic, strong) AFOCommand *command;
@end

@implementation AFOInvoker
- (instancetype)initWithCommand:(AFOCommand *)command{
    if (self = [super init]) {
        _command = command;
    }
    return self;
}
- (void)invokerAction{
    [self.command commandAction];
}
#pragma mark ------ property
- (AFOCommand *)command{
    if (!_command) {
        _command = [[AFOCommand alloc] init];
    }
    return _command;
}
@end
