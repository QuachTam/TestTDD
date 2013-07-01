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
    
    NSArray *arraySub = [strValue componentsSeparatedByString:@","];
    NSInteger total = 0;
    for (NSString *sub in arraySub) {
        total +=[sub integerValue];
    }
    return total;
}
@end
