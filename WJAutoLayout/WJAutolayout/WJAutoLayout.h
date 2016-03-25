//
//  WJAutoLayout.h
//  WJAutoLayout
//
//  Created by wenjie on 16/3/23.
//  Copyright © 2016年 com.firsttruck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJAutoLayout : NSObject


/**  ---------------------父子视图自动对齐方法----------------------------------- */


/** 设定相对父视图的上、下、左、右、相对距离        参数 sub:子视图  t:上  b:下  l:左  r:右、sup:父视图 */
+ (void)sub:(UIView *)subView t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right sup:(UIView *)superView;


/** 设定相对父视图的上、左、右、相对距离及子视图的高 参数 sub:子视图  t:上  l:左  h:高  r:右  sup:父视图  */
+ (void)sub:(UIView *)subView t:(CGFloat)top l:(CGFloat)left h:(CGFloat)height r:(CGFloat)right sup:(UIView *)superView;

/** 设定相对父视图的上、左、相对距离及子视图的宽高  参数 sub:子视图   t:上  l:左  h:高  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview t:(CGFloat)top l:(CGFloat)left h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView;

/** 设定相对父视图的上、右、相对距离及子视图的宽高  参数 sub:子视图   t:上  l:右  h:高  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview t:(CGFloat)top r:(CGFloat)right h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView;

/** 设定相对父视图的上、下、左、相对距离及子视图的宽  参数 sub:子视图   t:上  b:下  l:左  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left w:(CGFloat)width sup:(UIView *)superView;

/** 设定相对父视图的上、下、右、相对距离及子视图的宽  参数 sub:子视图   t:上  b:下  r:右  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview t:(CGFloat)top b:(CGFloat)bottom r:(CGFloat)right w:(CGFloat)width sup:(UIView *)superView;


/** 设定相对父视图的下、左、相对距离及子视图的宽高  参数 sub:子视图   b:下  l:左  h:高  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview b:(CGFloat)bottom l:(CGFloat)left h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView;

/** 设定相对父视图的下、左、右、相对距离及子视图的高 参数 sub:子视图  b:下  l:左  h:高  r:右  sup:父视图  */
+ (void)sub:(UIView *)subView b:(CGFloat)bottom l:(CGFloat)left h:(CGFloat)height r:(CGFloat)right sup:(UIView *)superView;

/** 设定相对父视图的下、右、相对距离及子视图的宽高  参数 sub:子视图   b:下  l:右  h:高  w:宽  sup:父视图 */
+ (void)sub:(UIView *)subview b:(CGFloat)bottom r:(CGFloat)right h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView;


/** 设定相对父视图X Y 轴中心居中  参数 sub:子视图  centerToSup:父视图  x:BOOL值  y:BOOL值  */
+ (void)sub:(UIView *)subView centerToSup:(UIView *)superView x:(BOOL)x y:(BOOL)y;





/**  ---------------------子视图与子视图自动对齐方法--------------------------------- */

/** 设定相对左边视图的相对距离 参数 view:视图 l:左边距离 lV:参照视图  */
+ (void)view:(UIView *)subView l:(CGFloat)left lV:(UIView *)leftView;

/** 设定相对左边视图的相对距离 参数 view:视图 r:右边距离 lV:参照视图  */
+ (void)view:(UIView *)subView r:(CGFloat)right rV:(UIView *)rightView;

/** 设定相对左边视图的相对距离 参数 view:视图 t:上边距离 lV:参照视图  */
+ (void)view:(UIView *)subView t:(CGFloat)top tV:(UIView *)topView;

/** 设定相对左边视图的相对距离 参数 view:视图 b:下边距离 lV:参照视图  */
+ (void)view:(UIView *)subView bottom:(CGFloat)bottom bV:(UIView *)bottomView;

/** 设定相对参照视图图X Y 轴中心居中  参数 sub:视图  centerToSup:参照视图  x:BOOL值  y:BOOL值  */
+ (void)view:(UIView *)subView centerRefer:(UIView *)referView x:(BOOL)x y:(BOOL)y;




/**  ---------------------多个视图若干等分排列--------------------------------- */

/**  设定相对父视图平均等分若干子视图并横向排列 horizontalViews:横向排列的视图数组 t:上  b:下  l:左  r:右  s:子视图间距  sup:父视图  */
+ (void)horizontalViews:(NSArray *)views t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right s:(CGFloat)space sup:(UIView *)superView;


/**  设定相对父视图平均等分若干子视图并纵向排列 verticalViews:纵向排列的视图数组  t:上  b:下  l:左  r:右  s:子视图间距  sup:父视图  */
+ (void)verticalViews:(NSArray *)views t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right s:(CGFloat)space sup:(UIView *)superView;


/**  设定相对父视图平均等分若干子视图并纵横向排列 horAndVerViews:纵横向排列的视图数组  t:上  b:下  l:左  r:右  hs:横向间距 vs:纵向间隙 maxHC:横向最大数 ratio:高度相对宽度的比例 sup:父视图  */
+ (void)horAndVerViews:(NSArray *)views
                    t:(CGFloat)top
                    b:(CGFloat)bottom
                    l:(CGFloat)left
                    r:(CGFloat)right
                   hs:(CGFloat)horizontalSpace
                   vs:(CGFloat)verticalSpace
                maxHC:(NSInteger)maxHorizontalCount
                ratio:(CGFloat)ratio
                  sup:(UIView *)superView;








@end
