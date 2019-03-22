//
//  AFOFactory.m
//  AFOSimpleFactory
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"
#import "AFOBook.h"
#import "AFOReferenceBook.h"
#import "AFOStoryBook.h"

@interface AFOFactory ()
@property (nonatomic, strong) AFOReferenceBook  *referenceBook;
@property (nonatomic, strong) AFOStoryBook      *storyBook;
@end

@implementation AFOFactory
- (void)getBookType:(AFOBOOKTYPE)type{
    switch (type) {
        case AFOREFERENCEBOOK:
            [self.referenceBook gettingBookType];
            break;
        case AFOBOOKSTORYTYPE:
            [self.storyBook gettingBookType];
            break;
        default:
            break;
    }
}
#pragma mark ------ property
- (AFOReferenceBook *)referenceBook{
    if (!_referenceBook) {
        _referenceBook = [[AFOReferenceBook alloc] init];
    }
    return _referenceBook;
}
- (AFOStoryBook *)storyBook{
    if (!_storyBook) {
        _storyBook = [[AFOStoryBook alloc] init];
    }
    return _storyBook;
}
@end
