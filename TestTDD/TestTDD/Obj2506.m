//
//  Obj2506.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/25/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2506.h"

@implementation Obj2506
+(NSInteger)cal2506:(NSString*)strValue{
    
    if ([strValue length]==0) {
        return 0;
    }
    
    //   //;\n1;2
    
    NSString *str = [strValue substringWithRange:NSMakeRange(0, 2)];
    NSString *delimiter;
    NSString *tempValue;
    if ([str isEqualToString:@"//"]) {
        delimiter = [strValue substringWithRange:NSMakeRange(2, 1)];
        tempValue = [strValue substringWithRange:NSMakeRange(3, [strValue length]-3)];
    }else{
        tempValue = strValue;
        delimiter = @",";
    }
    NSArray *array = [tempValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:[NSString stringWithFormat:@"\n %@", delimiter]]];
    NSInteger total = 0;
    for (NSString *str in array) {
        total +=[str integerValue];
    }
    return total;
}
@end
