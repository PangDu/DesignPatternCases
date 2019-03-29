//
//  AFOPerson.h
//  AFODelegate
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFODelegateAction.h"
NS_ASSUME_NONNULL_BEGIN

@interface AFOPerson : NSObject<AFODelegateAction>
- (void)playCars;
@end

NS_ASSUME_NONNULL_END
