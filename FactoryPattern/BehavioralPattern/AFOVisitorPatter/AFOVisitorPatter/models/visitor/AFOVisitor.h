//
//  AFOVisitor.h
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOVisitable;
@interface AFOVisitor : NSObject
- (void)printVisitable:(AFOVisitable *)visitable;
@end

NS_ASSUME_NONNULL_END
