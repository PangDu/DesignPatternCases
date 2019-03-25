//
//  AFOStoryFactory.m
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOStoryFactory.h"
#import "AFOStoryBooks.h"

@interface AFOStoryFactory ()
@property (nonatomic, strong) AFOStoryBooks     *storyBooks;
@end

@implementation AFOStoryFactory
- (AFOBooks *)createBooks{
    return self.storyBooks;
}
- (AFOStoryBooks *)storyBooks{
    if (!_storyBooks) {
        _storyBooks = [[AFOStoryBooks alloc] init];
    }
    return _storyBooks;
}
@end
