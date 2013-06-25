//
//  Obj2506.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/25/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2506.h"

@implementation Obj2506
+(NSInteger)cal2506:(NSString*)strValue{
    
    if ([strValue length]==0) {
        return 0;
    }
    NSArray *array = [strValue componentsSeparatedByString:@","];
    NSInteger total = 0;
    for (NSString *str in array) {
        total +=[str integerValue];
    }
    return total;
}
@end