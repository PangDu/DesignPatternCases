//
//  AFOGeographyFactory.h
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"
NS_ASSUME_NONNULL_BEGIN
@interface AFOGeographyFactory : AFOFactory
- (AFOBooks *)createBooks;
@end

NS_ASSUME_NONNULL_END
