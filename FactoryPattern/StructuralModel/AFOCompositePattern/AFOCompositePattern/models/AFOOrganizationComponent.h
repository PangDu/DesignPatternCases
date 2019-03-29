//
//  AFOOrganizationComponent.h
//  AFOCompositePattern
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFOOrganizationComponent : NSObject
@property (nonatomic, copy) NSString *strName;
- (instancetype)initWith:(NSString *)name;
- (void)addOrganization:(AFOOrganizationComponent *)objc;
@end

NS_ASSUME_NONNULL_END
