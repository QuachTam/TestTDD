//
//  Obj1906.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/19/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj1906.h"

@implementation Obj1906
+(NSInteger)cal:(NSString*)strValue{
    if ([strValue length]==0) {
        return 0;
    }
    
    NSArray *array = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n ,"]];
    NSInteger total =0;
    for (int i=0; i<[array count]; i++) {
        total = total + [[array objectAtIndex:i] integerValue];
    }
    return total;
}
@end
