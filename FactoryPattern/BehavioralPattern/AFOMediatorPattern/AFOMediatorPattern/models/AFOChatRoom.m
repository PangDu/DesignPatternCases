//
//  AFOChatRoom.m
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOChatRoom.h"
#import "AFOUser.h"

@implementation AFOChatRoom
- (void)showMessageFor:(AFOUser *)user message:(nonnull NSString *)message{
    NSLog(@"%@ sender: %@,in room %@",user.strName,message,self.strName);
}
@end
