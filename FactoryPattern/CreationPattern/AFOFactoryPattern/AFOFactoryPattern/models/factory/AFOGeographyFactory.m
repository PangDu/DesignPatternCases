//
//  AFOGeographyFactory.m
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOGeographyFactory.h"
#import "AFOGeographyBooks.h"
@interface AFOGeographyFactory ()
@property (nonatomic, strong)       AFOGeographyBooks   *geographyBooks;
@end
@implementation AFOGeographyFactory
- (AFOBooks *)createBooks{
    return self.geographyBooks;
}
- (AFOGeographyBooks *)geographyBooks{
    if (!_geographyBooks) {
        _geographyBooks = [[AFOGeographyBooks alloc] init];
    }
    return _geographyBooks;
}
@end
