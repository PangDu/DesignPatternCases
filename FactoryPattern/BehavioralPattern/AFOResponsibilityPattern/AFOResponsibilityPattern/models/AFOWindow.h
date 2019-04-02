//
//  AFOWindow.h
//  AFOResponsibilityPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOTouch;
@interface AFOWindow : NSObject
@property (nonatomic, copy) NSString     *name;
@property (nonatomic, strong) AFOWindow  *nextSupport;
- (instancetype)initNextSupport:(AFOWindow *)support;
- (void)findRightDeal:(AFOTouch *)touch;
@end

NS_ASSUME_NONNULL_END
