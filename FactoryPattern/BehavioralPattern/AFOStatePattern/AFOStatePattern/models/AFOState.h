//
//  AFOState.h
//  AFOStatePattern
//
//  Created by xueguang xian on 2019/3/31.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, AFOStateSportsmanship) {
    AFOStateSportsmanshipNormal                     = 1,
    AFOStateSportsmanshipDisorder                   = 2,
    AFOStateSportsmanshipSupernormalS               = 3
};
NS_ASSUME_NONNULL_BEGIN

@interface AFOState : NSObject
- (void)doStateAction;
@end

NS_ASSUME_NONNULL_END
