//
//  AFOOriginator.h
//  AFOMementoPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOMemento;
@interface AFOOriginator : NSObject
@property (nonatomic, copy) NSString *strState;
- (instancetype)initWithState:(NSString *)state;
- (void)settingMemento:(AFOMemento *)memento;
- (void)showState;
@end

NS_ASSUME_NONNULL_END
