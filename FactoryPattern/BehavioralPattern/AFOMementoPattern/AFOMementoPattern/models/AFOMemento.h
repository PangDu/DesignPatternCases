//
//  AFOMemento.h
//  AFOMementoPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOMemento : NSObject
@property (nonatomic, copy) NSString *strState;
- (instancetype)initWithState:(NSString *)state;
@end

NS_ASSUME_NONNULL_END
