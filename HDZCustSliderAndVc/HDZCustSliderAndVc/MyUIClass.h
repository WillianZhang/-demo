//
//  MyUIClass.h
//  UIClass
//
//  Created by 张斌伟 on 14/4/10.
//  Copyright (c) 2015年 ZBW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyUIClass : NSObject//UI工厂类

//UIView
+(UIView*)makeUIViewWithFrame:(CGRect)rect andBackColor:(UIColor*)color;

//UILabel
+(UILabel*)makeUILabelWithFrame:(CGRect)rect andBackColor:(UIColor*)backColor andText:(NSString*)text andTextColor:(UIColor*)textColor andFont:(UIFont*)font andAlignment:(NSTextAlignment)alignment;

//UIImageView
+(UIImageView*)makeUIImageWithFrame:(CGRect)rect andPicName:(NSString*)imageName;

//UITextField
+(UITextField*)makeUITextFieldWithFrame:(CGRect)rect andDelegate:(id)target andBorderStyle:(UITextBorderStyle)borderStyle andPlaceHolder:(NSString*)holder andSecu:(BOOL)isSecu andLeftView:(UIView*)leftView andLeftViewMode:(UITextFieldViewMode)leftViewMode andRightView:(UIView*)rightView andRightViewMode:(UITextFieldViewMode)rightViewMode andClearBtnMode:(UITextFieldViewMode)clearMode andAutoCorrect:(UITextAutocorrectionType)correctType andAutoCapital:(UITextAutocapitalizationType)capitalType andKeyboardType:(UIKeyboardType)keyboard andReturnType:(UIReturnKeyType)returnKey andInputView:(UIView*)inputView;

//UIButton
+(UIButton*)makeUIButtonWithFrame:(CGRect)rect andType:(UIButtonType)type andBackGroundClor:(UIColor*)backgroundclor andTitle:(NSString*)title andTitleColor:(UIColor *)color andImageName:(NSString*)imageName andTarget:(id)target andSelector:(SEL)selector andEvent:(UIControlEvents)event andState:(UIControlState)state;

////UIAlertView
//+(UIAlertView*)makeUIAlertView:(NSString *)messsage andTarget:(id)target;

@end






