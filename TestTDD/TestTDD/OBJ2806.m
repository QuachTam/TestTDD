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
    if ([strValue length]==0) {
       return 0;
    }
    NSRange subFrom = [strValue rangeOfString:@"//"];
    NSString *subDeletimer = @",";
    if (subFrom.length>0) {
        NSLog(@"subFrommxxX: %d", subFrom.location);
        subDeletimer = [strValue substringWithRange:NSMakeRange(subFrom.length, 1)];
        NSLog(@"subDeletimer: %@", subDeletimer);
    }
    NSString *deletimer = [NSString stringWithFormat:@"\n %@", subDeletimer];
    NSArray *arraysubstring = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:deletimer]];
    NSInteger total =0;
    for (NSString *sub in arraysubstring) {
        total +=[sub integerValue];
    }
    return total;
}
@end
