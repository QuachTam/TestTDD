//
//  Obj2006.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/21/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2006.h"

@implementation Obj2006
+(NSInteger)cal2006:(NSString*)strValue{
    if ([strValue length]==0) {
        return 0;
    }
    NSArray *array1 = [strValue componentsSeparatedByString:@"\\"];
    if ([array1 count]>=2) {
        NSString *delimiter = [array1 objectAtIndex:1];
    }
    
    NSArray *arrayTemp = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n ,"]];
    NSInteger total = 0;
    for (NSString *info in arrayTemp) {
        total = total + [info integerValue];
    }
    return total;
}
@end
