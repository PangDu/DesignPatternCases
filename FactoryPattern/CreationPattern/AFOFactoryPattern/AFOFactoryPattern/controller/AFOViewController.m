//
//  ViewController.m
//  AFOFactoryPattern
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOStoryFactory.h"
#import "AFOReferenceFactory.h"
#import "AFOGeographyFactory.h"
#import "AFOBooks.h"
@interface AFOViewController ()
@property (nonatomic, strong) AFOStoryFactory       *storyFactory;
@property (nonatomic, strong) AFOReferenceFactory   *referenceFactory;
@property (nonatomic, strong) AFOGeographyFactory   *geographyFactory;
@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOBooks *story = [self.storyFactory createBooks];
    [story getClassName];
    ///---
    AFOBooks *reference = [self.referenceFactory createBooks];
    [reference getClassName];
    ///---
    AFOBooks *geography = [self.geographyFactory createBooks];
    [geography getClassName];
}
- (AFOStoryFactory *)storyFactory{
    if (!_storyFactory) {
        _storyFactory = [[AFOStoryFactory alloc] init];
    }
    return _storyFactory;
}
- (AFOReferenceFactory *)referenceFactory{
    if (!_referenceFactory) {
        _referenceFactory = [[AFOReferenceFactory alloc] init];
    }
    return _referenceFactory;
}
- (AFOGeographyFactory *)geographyFactory{
    if (!_geographyFactory) {
        _geographyFactory = [[AFOGeographyFactory alloc] init];
    }
    return _geographyFactory;
}
@end
