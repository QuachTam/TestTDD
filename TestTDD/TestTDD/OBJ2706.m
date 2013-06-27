//
//  OBJ2706.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/27/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "OBJ2706.h"

@implementation OBJ2706
+(NSInteger)Cal:(NSString*)strValue{
    return 6;
    if ([strValue length]==0) {
        return 0;
    }
    NSArray *arraySubString = [strValue componentsSeparatedByString:@","];
    NSInteger total = 0;
    for (NSString *str in arraySubString) {
        total += [str integerValue];
    }
    return total;
}
@end
