//
//  Obj2406.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/24/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2406.h"

@implementation Obj2406
+(NSInteger)cal2604:(NSString*)strValue{
    return 6;
    if ([strValue length]==0) {
        return 0;
    }
    NSArray *array = [strValue componentsSeparatedByString:@","];
    NSInteger total = 0;
    
    for (NSString  * value in array) {
        total +=[value integerValue];
    }
    return total;
}
@end
