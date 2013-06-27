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
    
    NSRange rangeSearch = [strValue rangeOfString:@"//"];
    NSString *delimiter = @",";
    if (rangeSearch.length>0) {
        delimiter = [strValue substringWithRange:NSMakeRange(2, 1)];
        NSLog(@"xxx: %@", delimiter);
    }
    NSString *strDelimiter = [NSString stringWithFormat:@"\n %@", delimiter];
    NSArray *arraySubString = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:strDelimiter]];
    NSLog(@"arraySubString: %@", arraySubString);
    NSInteger total = 0;
    for (NSString *str in arraySubString) {
        if ([str integerValue]>=1000) {
            continue;
        }
        NSLog(@"[str integerValue]: %d", [str integerValue]);
        total += [str integerValue];
    }
    return total;
}
@end
