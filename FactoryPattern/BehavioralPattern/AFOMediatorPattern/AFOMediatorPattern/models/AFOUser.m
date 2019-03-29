//
//  AFOUser.m
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOUser.h"
#import "AFOMediator.h"
#import "AFOChatRoom.h"

@interface AFOUser ()
@property (nonatomic, strong) AFOChatRoom *chatRoom;
@property (nonatomic, strong) AFOMediator *mediator;
@end

@implementation AFOUser
- (AFOMediator *)mediator{
    if (!_mediator) {
        _mediator = [[AFOMediator alloc] init];
    }
    return _mediator;
}
@end
