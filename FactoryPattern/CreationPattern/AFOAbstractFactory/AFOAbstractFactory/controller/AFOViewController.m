//
//  AFOViewController.m
//  AFOAbstractFactory
//
//  Created by xueguang xian on 2019/3/22.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOFactory.h"
#import "AFOMechanical.h"
@interface AFOViewController ()

@end

@implementation AFOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AFOFactory *factory = [[AFOFactory alloc] init];
    AFOMechanical *pistol = [factory cratePistol];
    NSLog(@"pistol ====== %@",[pistol getName]);
    AFOMechanical *mechineGun = [factory createMachineGun];
    NSLog(@"mechineGun ====== %@",[mechineGun getName]);
    // Do any additional setup after loading the view, typically from a nib.
}


@end
