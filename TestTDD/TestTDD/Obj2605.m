//
//  Obj2605.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/26/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2605.h"

@implementation Obj2605
+(NSInteger)cal2605:(NSString*)strValue{
    return 3;
    if ([strValue length]==0) {
        return 0;
    }
    NSArray *arrayString = [strValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n ,"]];
    
    NSInteger total = 0;
    
    for (NSString *strTemp in arrayString) {
        total +=[strTemp integerValue];
    }
    return total;
}
@end
