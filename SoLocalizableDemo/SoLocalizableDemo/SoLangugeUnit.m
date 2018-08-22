//
//  SoLangugeUnit.m
//  SoLocalizableDemo
//
//  Created by teamotto on 2018/8/22.
//  Copyright © 2018年 soso. All rights reserved.
//

#import "SoLangugeUnit.h"

@implementation SoLangugeUnit

+(void)saveCurrentLanguge:(NSString *)languge {
    [[NSUserDefaults standardUserDefaults] setValue:languge forKey:kCURRENTLANGUGEOBJECKEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(NSString *)currentLanguge {
    NSString *languge = [[NSUserDefaults standardUserDefaults] objectForKey:kCURRENTLANGUGEOBJECKEY];
    
    if(languge == nil || languge.length == 0) {
        return @"en";
    }
    
    return languge;
}

+(NSString *)deviceLanguge {
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    if([currentLanguage hasPrefix:@"zh-Hans"]) {
        return @"zh-Hans";
    }else if([currentLanguage hasPrefix:@"zh-Hant"]) {
        return @"zh-Hant";
    }else if([currentLanguage hasPrefix:@"en"]) {
        return @"en";
    }
    
    return @"en";
}

+(NSBundle *)localiableBundleFormCurrentLanguge {
    return [self localiableBundleWithLangugeStirng:[self currentLanguge]];
}

+(NSBundle *)localiableBundleWithLangugeStirng:(NSString *)languge {
    NSString *pathString = [[NSBundle mainBundle] pathForResource:languge ofType:@"lproj"];
    NSBundle *bundle = [[NSBundle alloc]initWithPath:pathString];
    return bundle;}

@end
