//
//  AFOViewController.m
//  AFOSimpleFactory
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOFactory.h"
@interface AFOViewController ()
@property (nonatomic, strong) AFOFactory *factory;
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.factory getBookType:AFOREFERENCEBOOK];
    // Do any additional setup after loading the view, typically from a nib.
}

- (AFOFactory *)factory{
    if (!_factory) {
        _factory = [[AFOFactory alloc] init];
    }
    return _factory;
}
@end
