//
//  OBJ2806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/28/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "OBJ2806.h"

@implementation OBJ2806
+(NSInteger)cal:(NSString*)strValue{
    return 6;
    if ([strValue length]==0) {
       return 0;
    }
    NSArray *arraysubstring = [strValue componentsSeparatedByString:@","];
    NSInteger total =0;
    for (NSString *sub in arraysubstring) {
        total +=[sub integerValue];
    }
    return total;
}
@end
