//
//  AFOFactory.h
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AFOBooks;
@interface AFOFactory : NSObject
- (AFOBooks *)createBooks;
@end

NS_ASSUME_NONNULL_END
