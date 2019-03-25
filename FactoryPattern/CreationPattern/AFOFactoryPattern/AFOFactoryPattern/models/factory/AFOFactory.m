//
//  AFOFactory.m
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOFactory.h"
#import "AFOBooks.h"

@interface AFOFactory ()
@property (nonatomic, strong)       AFOBooks *books;
@end

@implementation AFOFactory
- (AFOBooks *)createBooks{
    if (!_books) {
        _books = [[AFOBooks alloc] init];
    }
    return _books;
}
@end
