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
    if ([strValue length]==0) {
        return 0;
    }
    NSRange rangeFrom = [strValue rangeOfString:@"//"];
    NSString *delimiter = @",";
    if (rangeFrom.length>0) {
        
        NSRange rangeTo = [strValue rangeOfString:@"\n"];
        NSString *allDelimiter = [strValue substringWithRange:NSMakeRange(rangeFrom.length, rangeTo.location - rangeFrom.location-1)];
        delimiter = allDelimiter;
    }
    NSString *strDelimiter = [NSString stringWithFormat:@"\n %@", delimiter];
    NSArray *arraySubString = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:strDelimiter]];
    NSInteger total = 0;
    for (NSString *str in arraySubString) {
        if ([str integerValue]>=1000) {
            continue;
        }
        total += [str integerValue];
    }
    return total;
}
@end
