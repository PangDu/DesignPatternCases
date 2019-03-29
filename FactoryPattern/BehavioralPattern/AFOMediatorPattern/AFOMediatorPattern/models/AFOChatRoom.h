//
//  AFOChatRoom.h
//  AFOMediatorPattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOUser;
@interface AFOChatRoom : NSObject
@property (nonatomic, copy) NSString *strName;
- (void)showMessageFor:(AFOUser *)user message:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
