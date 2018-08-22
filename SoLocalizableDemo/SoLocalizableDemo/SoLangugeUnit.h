//
//  SoLangugeUnit.h
//  SoLocalizableDemo
//
//  Created by teamotto on 2018/8/22.
//  Copyright © 2018年 soso. All rights reserved.
//

#import <Foundation/Foundation.h>


#define kCURRENTLANGUGEOBJECKEY @"CurrentLanguageKey"

@interface SoLangugeUnit : NSObject
{
    
}


/**
 保存设置的语言

 @param languge string
 */
+(void)saveCurrentLanguge:(NSString *)languge;

/**
 当前设置的语言

 @return stirng
 */
+(NSString *)currentLanguge;


/**
 设备系统语言

 @return stirng
 */
+(NSString *)deviceLanguge;


/**
  当前设置的语言Bundle

 @return Bundle
 */
+(NSBundle *)localiableBundleFormCurrentLanguge;


/**
 languge的语言Bundle

 @param languge 语言代号String
 @return Bundle
 */
+(NSBundle *)localiableBundleWithLangugeStirng:(NSString *)languge;

@end
