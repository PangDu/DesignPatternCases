//
//  AFOPerson.h
//  AFOFilterPattern
//
//  Created by xueguang xian on 2019/4/2.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOPerson : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *gender;
- (instancetype)initWithName:(NSString *)name
                      gender:(NSString *)gender;
@end

NS_ASSUME_NONNULL_END
