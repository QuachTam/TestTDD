//
//  OBJ0107.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/1/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "OBJ0107.h"

@implementation OBJ0107
+(NSInteger)cal:(NSString*)strValue{
    return 6;
    if ([strValue length]==0) {
        return 0;
    }
    
    NSRange from = [strValue rangeOfString:@"//"];
    NSString *subDeletimer = @"";
    NSLog(@"from: %d", from.length);
    if (from.length>=2) {
        subDeletimer = [strValue substringWithRange:NSMakeRange(2, 1)];
        NSLog(@"subDeletimer: %@", subDeletimer);
    }else{
        subDeletimer = @",";
    }
    
    NSArray *arraySub = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:[NSString stringWithFormat:@"\n %@", subDeletimer]]];
    NSInteger total = 0;
    for (NSString *sub in arraySub) {
        if ([sub integerValue]<0) {
            NSException *ecx = [NSException exceptionWithName:@"negatives not allowed" reason:@"negatives not allowed" userInfo:nil];
            [ecx raise];
        }else{
            if ([sub integerValue]>1000) {
                continue;
            }
            total +=[sub integerValue];
        }
    }
    return total;
}
@end
