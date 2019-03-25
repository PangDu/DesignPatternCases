//
//  AFOFactory.h
//  AFOSimpleFactory
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, AFOBOOKTYPE) {
    AFOBOOKSTORYTYPE = 0,
    AFOREFERENCEBOOK = 1
};
NS_ASSUME_NONNULL_BEGIN

@interface AFOFactory : NSObject
- (void)getBookType:(AFOBOOKTYPE)type;
@end

NS_ASSUME_NONNULL_END
