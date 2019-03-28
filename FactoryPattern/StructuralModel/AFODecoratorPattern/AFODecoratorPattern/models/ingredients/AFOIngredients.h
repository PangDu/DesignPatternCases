//
//  AFOIngredients.h
//  AFODecoratorPattern
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOBread.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFOIngredients : AFOBread
- (AFOBread *)addIngredients:(AFOBread *)bread;
@end

NS_ASSUME_NONNULL_END
