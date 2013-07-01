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
    if ([strValue length]==0) {
        return 0;
    }
    
    NSArray *arraySub = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n ,"]];
    NSInteger total = 0;
    for (NSString *sub in arraySub) {
        if ([sub integerValue]<0) {
            NSException *ecx = [NSException exceptionWithName:@"negatives not allowed" reason:@"negatives not allowed" userInfo:nil];
            [ecx raise];
        }else{
            total +=[sub integerValue];
        }
    }
    return total;
}
@end
