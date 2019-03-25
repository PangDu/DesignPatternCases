//
//  AFOReferenceFactory.m
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOReferenceFactory.h"
#import "AFOReferenceBooks.h"

@interface AFOReferenceFactory ()
@property (nonatomic, strong) AFOReferenceBooks     *referenceBooks;
@end
@implementation AFOReferenceFactory
- (AFOBooks *)createBooks{
    return self.referenceBooks;
}
- (AFOReferenceBooks *)referenceBooks{
    if (!_referenceBooks) {
        _referenceBooks = [[AFOReferenceBooks alloc] init];
    }
    return _referenceBooks;
}
@end
