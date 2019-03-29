//
//  AFOMediator.m
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOMediator.h"
#import "AFOUser.h"
#import "AFOChatRoom.h"
@implementation AFOMediator
- (void)sendMessage:(NSString *)message
               from:(AFOUser *)user
                 to:(AFOChatRoom *)chatRoom{
    [chatRoom showMessageFor:user message:message];
}
@end
