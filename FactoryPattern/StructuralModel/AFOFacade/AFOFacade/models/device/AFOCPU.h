//
//  AFOCPU.h
//  AFOFacade
//
//  Created by xueguang xian on 2019/3/26.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOComputer.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFOCPU : AFOComputer
- (void)processingInstruction;
- (void)stopReceive;
@end

NS_ASSUME_NONNULL_END
