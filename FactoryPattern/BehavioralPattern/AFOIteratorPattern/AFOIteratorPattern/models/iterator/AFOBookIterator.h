//
//  AFOBookIterator.h
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOIterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFOBookIterator : AFOIterator
- (instancetype)initWithArray:(NSMutableArray *)array;
@end

NS_ASSUME_NONNULL_END
