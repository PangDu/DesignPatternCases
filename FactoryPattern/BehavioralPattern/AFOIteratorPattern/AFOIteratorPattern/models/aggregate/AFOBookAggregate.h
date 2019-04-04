//
//  AFOBookAggregate.h
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOBook,AFOIterator;
@interface AFOBookAggregate : NSObject
- (void)addCourse:(AFOBook *)book;
- (void)removeCourse:(AFOBook *)book;
- (AFOIterator *)getBookIterator;
@end

NS_ASSUME_NONNULL_END
