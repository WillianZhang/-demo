//
//  MyUIClass.m
//  UIClass
//
//  Created by 张斌伟 on 14/4/10.
//  Copyright (c) 2015年 ZBW. All rights reserved.
//

#import "MyUIClass.h"

@implementation MyUIClass

+(UIView*)makeUIViewWithFrame:(CGRect)rect andBackColor:(UIColor *)color
{
    UIView *view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = color;
    return view;
}

+(UILabel*)makeUILabelWithFrame:(CGRect)rect andBackColor:(UIColor *)backColor andText:(NSString *)text andTextColor:(UIColor *)textColor andFont:(UIFont *)font andAlignment:(NSTextAlignment)alignment
{
    UILabel *lab = [[UILabel alloc] initWithFrame:rect];
    lab.text = text;
    lab.backgroundColor = backColor;
    lab.textColor = textColor;
    lab.font = font;
    lab.textAlignment = alignment;
    return lab;
}

+(UIImageView*)makeUIImageWithFrame:(CGRect)rect andPicName:(NSString *)imageName
{
    UIImageView *img = [[UIImageView alloc] initWithFrame:rect];
    img.image = [UIImage imageNamed:imageName];
    return img;
}

+(UITextField*)makeUITextFieldWithFrame:(CGRect)rect andDelegate:(id)target andBorderStyle:(UITextBorderStyle)borderStyle andPlaceHolder:(NSString *)holder andSecu:(BOOL)isSecu andLeftView:(UIView *)leftView andLeftViewMode:(UITextFieldViewMode)leftViewMode andRightView:(UIView *)rightView andRightViewMode:(UITextFieldViewMode)rightViewMode andClearBtnMode:(UITextFieldViewMode)clearMode andAutoCorrect:(UITextAutocorrectionType)correctType andAutoCapital:(UITextAutocapitalizationType)capitalType andKeyboardType:(UIKeyboardType)keyboard andReturnType:(UIReturnKeyType)returnKey andInputView:(UIView *)inputView
{
    UITextField *text = [[UITextField alloc] initWithFrame:rect];
    text.placeholder = holder;
    text.delegate = target;
    text.secureTextEntry = isSecu;
    text.borderStyle = borderStyle;
    text.leftView = leftView;
    text.leftViewMode = leftViewMode;
    text.rightView = rightView;
    text.rightViewMode = rightViewMode;
    text.clearButtonMode = clearMode;
    text.autocorrectionType = correctType;
    text.autocapitalizationType = capitalType;
    text.keyboardType = keyboard;
    text.returnKeyType = returnKey;
    text.inputView = inputView;
    return text;
}

+(UIButton*)makeUIButtonWithFrame:(CGRect)rect andType:(UIButtonType)type andBackGroundClor:(UIColor*)backgroundclor andTitle:(NSString *)title andTitleColor:(UIColor *)color andImageName:(NSString *)imageName andTarget:(id)target andSelector:(SEL)selector andEvent:(UIControlEvents)event andState:(UIControlState)state
{
    UIButton *btn = [UIButton buttonWithType:type];
    btn.frame = rect;
    //按钮封装  如果是没样式 添加图片  如果非0（即选择了样式）则可以添加按钮的背景颜色、文字、字体颜色
    if(type == 0)
    {
        [btn setImage:[UIImage imageNamed:imageName] forState:state];
    }
    else
    {
        btn.backgroundColor = backgroundclor;
        [btn setTitle:title forState:state];
        [btn setTintColor:color];
    }
    [btn addTarget:target action:selector forControlEvents:event];
    return btn;
}

//+(UIAlertView*)makeUIAlertView:(NSString *)messsage andTarget:(id)target
//{
//    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:messsage message:@"" delegate:target cancelButtonTitle:@"好的" otherButtonTitles: nil];
//    [alert show];
//    return alert;
//}

@end



