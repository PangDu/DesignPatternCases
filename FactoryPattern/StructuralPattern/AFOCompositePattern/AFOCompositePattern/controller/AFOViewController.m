//
//  AFOViewController.m
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOViewController.h"
#import "AFOUniversity.h"
#import "AFOCollege.h"
#import "AFODepartment.h"
#import "AFOOutPutInfo.h"
@interface AFOViewController ()
@end
@implementation AFOViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    ///---
    AFOUniversity *university = [[AFOUniversity alloc] initWith:@"Harvard University"];
    ///---
    AFOCollege *computerCollege = [[AFOCollege alloc] initWith:@"School of computer science"];
    AFOCollege *infoEngineeringCollege = [[AFOCollege alloc] initWith:@"School of information engineering"];
    ///---
    AFODepartment *science = [[AFODepartment alloc] initWith:@"Computer science and technology"];
    AFODepartment *software = [[AFODepartment alloc] initWith:@"Software engineering"];
    AFODepartment *network = [[AFODepartment alloc] initWith:@"Network engineering"];
    [computerCollege addOrganization:science];
    [computerCollege addOrganization:software];
    [computerCollege addOrganization:network];
    ///---
    AFODepartment *communication = [[AFODepartment alloc] initWith:@"Communication engineering"];
    AFODepartment *information = [[AFODepartment alloc] initWith:@"Information engineering"];
    [infoEngineeringCollege addOrganization:communication];
    [infoEngineeringCollege addOrganization:information];
    ///---
    [university addOrganization:computerCollege];
    [university addOrganization:infoEngineeringCollege];
    ///---
    AFOOutPutInfo *outPut = [[AFOOutPutInfo alloc] initWith:university];
    [outPut description];
}
@end
