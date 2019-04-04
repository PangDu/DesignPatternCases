//
//  AFOExpression.h
//  AFOInterpreterPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOExpression : NSObject
- (BOOL)interpretGender:(NSString *)context;
- (BOOL)interpretMarriage:(NSString *)context;
@end

NS_ASSUME_NONNULL_END
