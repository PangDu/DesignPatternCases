//
//  AFOViewController.m
//  AFODelegate
//
//  Created by xueguang xian on 2019/3/28.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOPerson.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOPerson *person = [[AFOPerson alloc] init];
    [person playCars];
    // Do any additional setup after loading the view.
}


@end
