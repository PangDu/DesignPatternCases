//
//  AFOViewController.m
//  AFOSingletonPattern
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOSingleton.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[AFOSingleton shareInstance] logClassName];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
