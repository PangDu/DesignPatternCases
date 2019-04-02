//
//  AFOCriteria.h
//  AFOFilterPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOPerson;
@interface AFOCriteria : NSObject
- (NSArray<AFOPerson *> *)meetCriteria:(NSArray<AFOPerson *> *)array;
- (void)show;
@end

NS_ASSUME_NONNULL_END
