//
//  AFOObserver.m
//  AFOObserver
//
//  Created by xueguang xian on 2019/3/29.
//  Copyright © 2019 AFO Science Technology Ltd. All rights reserved.
//

#import "AFOObserver.h"

@implementation AFOObserver
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"isStart"]) {
        NSLog(@"isStart old = %@", [NSString stringWithFormat:@"%d",[[change valueForKey:NSKeyValueChangeOldKey] boolValue]]);
        NSLog(@"isStart new = %@", [NSString stringWithFormat:@"%d",[[change valueForKey:NSKeyValueChangeNewKey] boolValue]]);
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}
@end
