//
//  AFOCard.h
//  AFOPrototypePattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOCard : NSObject
@property (nonatomic, copy)      NSString    *strCardId;
@property (nonatomic, strong)    NSNumber    *year;
@property (nonatomic, strong)    NSNumber    *money;
@end

NS_ASSUME_NONNULL_END
