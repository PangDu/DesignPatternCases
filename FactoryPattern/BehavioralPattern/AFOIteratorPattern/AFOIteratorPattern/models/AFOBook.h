//
//  AFOBook.h
//  AFOIteratorPattern
//
//  Created by xueguang xian on 2019/4/4.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface AFOBook : NSObject
- (instancetype)initWithName:(NSString *)name
                       price:(double)price;
@end

NS_ASSUME_NONNULL_END
