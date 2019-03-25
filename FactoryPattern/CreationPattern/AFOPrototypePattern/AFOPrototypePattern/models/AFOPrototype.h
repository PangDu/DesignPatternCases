//
//  AFOPrototype.h
//  AFOPrototypePattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOCard;
@interface AFOPrototype : NSObject
@property (nonatomic, copy)     NSString    *strName;
@property (nonatomic, strong)   NSNumber    *phone;
@property (nonatomic, copy)     NSString    *strAddress;
@property (nonatomic, strong)   AFOCard     *card;
@end

NS_ASSUME_NONNULL_END
