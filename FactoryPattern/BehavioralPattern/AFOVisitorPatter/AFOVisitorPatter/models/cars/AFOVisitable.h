//
//  AFOVisitable.h
//  AFOVisitorPatter
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOVisitor;
@interface AFOVisitable : NSObject
@property (nonatomic, copy) NSString *strName;
- (void)acceptAction:(AFOVisitor *)visitor;
@end

NS_ASSUME_NONNULL_END
