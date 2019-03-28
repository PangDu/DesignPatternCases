//
//  AFOCars.h
//  AFODelegate
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol AFODelegateAction;
@interface AFOCars : NSObject
- (instancetype)initWithDelegate:(id<AFODelegateAction>)target;
- (void)driving;
@end

NS_ASSUME_NONNULL_END
