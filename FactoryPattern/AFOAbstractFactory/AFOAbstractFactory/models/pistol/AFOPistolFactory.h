//
//  AFOPoliticalFactory.h
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/24.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"

NS_ASSUME_NONNULL_BEGIN
@class AFOPistol;
@interface AFOPistolFactory : AFOFactory
@property (nonatomic, strong, readonly) AFOPistol *pistol;
@end

NS_ASSUME_NONNULL_END
