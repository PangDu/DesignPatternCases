//
//  AFOMediator.h
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOUser,AFOChatRoom;
@interface AFOMediator : NSObject
- (void)sendMessage:(NSString *)message
               from:(AFOUser *)user
                 to:(AFOChatRoom *)chatRoom;

@end

NS_ASSUME_NONNULL_END
