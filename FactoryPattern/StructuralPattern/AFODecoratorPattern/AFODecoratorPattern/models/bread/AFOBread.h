//
//  AFOBread.h
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOBread : NSObject
@property (nonatomic, copy)     NSString        *name;
@property (nonatomic, strong)   NSNumber        *price;
@property (nonatomic, strong)   NSMutableArray  *addArray;
- (NSNumber*)add:(NSNumber *)one and:(NSNumber *)anotherNumber;
@end

NS_ASSUME_NONNULL_END
