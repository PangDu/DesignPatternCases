//
//  AFOCustomer.h
//  AFOBuilder
//
//  Created by xueguang xian on 2019/3/25.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOCustomer : NSObject
@property (nonatomic, copy)     NSString    *strId;
@property (nonatomic, copy)     NSString    *strName;
@property (nonatomic, copy)     NSString    *strPhone;
@property (nonatomic, copy)     NSString    *strArea;
@property (nonatomic, copy)     NSString    *strAddress;
@property (nonatomic, assign)   BOOL         isMembers;
@property (nonatomic, assign)   NSInteger    age;
- (void)logCustomer;
@end
NS_ASSUME_NONNULL_END
