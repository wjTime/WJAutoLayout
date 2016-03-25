//
//  WJAutoLayout.m
//  WJAutoLayout
//
//  Created by wenjie on 16/3/23.
//  Copyright © 2016年 com.firsttruck. All rights reserved.
//

#import "WJAutoLayout.h"


@implementation WJAutoLayout

+ (void)sub:(UIView *)subView t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right sup:(UIView *)superView{
    
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x += left;
    frame.size.width = frame.size.width - left - right;
    frame.size.height = frame.size.height - top - bottom;
    subView.frame = frame;
    if (![subView.superview isEqual:superView]) {
        [superView addSubview:subView];
    }
    
    
}

+ (void)sub:(UIView *)subView t:(CGFloat)top l:(CGFloat)left h:(CGFloat)height r:(CGFloat)right sup:(UIView *)superView{
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x += left;
    frame.size.width = frame.size.width - left - right;
    frame.size.height = height;
    subView.frame = frame;
    if (![subView.superview isEqual:superView]) {
        [superView addSubview:subView];
    }
}


+ (void)sub:(UIView *)subview t:(CGFloat)top l:(CGFloat)left h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView{

    CGRect frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x += left;
    frame.size.width = width;
    frame.size.height = height;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
}


+ (void)sub:(UIView *)subview t:(CGFloat)top r:(CGFloat)right h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView{
    
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x = frame.size.width - right - width;
    frame.size.width = width;
    frame.size.height = height;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
}

+ (void)sub:(UIView *)subview t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left w:(CGFloat)width sup:(UIView *)superView{
    
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x += left;
    frame.size.width = width;
    frame.size.height = frame.size.height - top - bottom;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
}

+ (void)sub:(UIView *)subview t:(CGFloat)top b:(CGFloat)bottom r:(CGFloat)right w:(CGFloat)width sup:(UIView *)superView{
    
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y += top;
    frame.origin.x += frame.size.width - right - width;
    frame.size.width = width;
    frame.size.height = frame.size.height - top - bottom;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
    
}

+ (void)sub:(UIView *)subview b:(CGFloat)bottom l:(CGFloat)left h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView{
    CGRect frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y = frame.size.height - bottom -height;
    frame.origin.x += left;
    frame.size.width = width;
    frame.size.height = height;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
}

+ (void)sub:(UIView *)subView b:(CGFloat)bottom l:(CGFloat)left h:(CGFloat)height r:(CGFloat)right sup:(UIView *)superView{
    
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y = frame.size.height - bottom -height;
    frame.origin.x += left;
    frame.size.width = frame.size.width - left - right;
    frame.size.height = height;
    subView.frame = frame;
    if (![subView.superview isEqual:superView]) {
        [superView addSubview:subView];
    }
    
}

+ (void)sub:(UIView *)subview b:(CGFloat)bottom r:(CGFloat)right h:(CGFloat)height w:(CGFloat)width sup:(UIView *)superView{
    CGRect frame = superView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    frame.origin.y = frame.size.height - bottom - height;
    frame.origin.x = frame.size.width - right - width;
    frame.size.width = width;
    frame.size.height = height;
    subview.frame = frame;
    if (![subview.superview isEqual:superView]) {
        [superView addSubview:subview];
    }
    
}

+ (void)sub:(UIView *)subView centerToSup:(UIView *)superView x:(BOOL)x y:(BOOL)y{
    
    CGRect subFrame = subView.frame;
    CGFloat subCenterOriginX = subFrame.size.width/2;
    CGFloat subCenterOriginY = subFrame.size.height/2;
    CGRect supFrame = superView.frame;
    CGFloat supCenterOriginX = supFrame.size.width/2;
    CGFloat supCenterOriginY = supFrame.size.height/2;
    if (x) {
        subFrame.origin.x = supCenterOriginX - subCenterOriginX;
    }
    if (y) {
        subFrame.origin.y = supCenterOriginY - subCenterOriginY;
    }
    subView.frame = subFrame;
    if (![subView.superview isEqual:superView]) {
        [superView addSubview:subView];
    }
    
    
}

+ (void)view:(UIView *)subView l:(CGFloat)left lV:(UIView *)leftView{
    
    CGRect subFrame = subView.frame;
    subFrame.origin.x = CGRectGetMaxX(leftView.frame) + left;
    subView.frame = subFrame;
    
}
    
+ (void)view:(UIView *)subView r:(CGFloat)right rV:(UIView *)rightView{
    
    CGRect subFrame = subView.frame;
    subFrame.origin.x = CGRectGetMinX(rightView.frame) - right -subFrame.size.width;
    subView.frame = subFrame;
    
}

+ (void)view:(UIView *)subView t:(CGFloat)top tV:(UIView *)topView{
    
    CGRect subFrame = subView.frame;
    subFrame.origin.x = CGRectGetMaxY(topView.frame) + top;
    subView.frame = subFrame;
}

+ (void)view:(UIView *)subView bottom:(CGFloat)bottom bV:(UIView *)bottomView{
    
    CGRect subFrame = subView.frame;
    subFrame.origin.x = CGRectGetMinY(bottomView.frame) - bottom -subFrame.size.height;
    subView.frame = subFrame;
}

+ (void)view:(UIView *)subView centerRefer:(UIView *)referView x:(BOOL)x y:(BOOL)y{
    
    CGRect subFrame = subView.frame;
    CGFloat subCenterOriginX = subFrame.size.width/2;
    CGFloat subCenterOriginY = subFrame.size.height/2;
    
    CGRect supFrame = referView.frame;
    CGFloat supCenterOriginX = supFrame.size.width/2;
    CGFloat supCenterOriginY = supFrame.size.height/2;
    if (x) {
        subFrame.origin.x = supCenterOriginX - subCenterOriginX + supFrame.origin.x;
    }
    if (y) {
        subFrame.origin.y = supCenterOriginY - subCenterOriginY + supFrame.origin.y;
    }
    subView.frame = subFrame;
   
}


+ (void)horizontalViews:(NSArray *)views t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right s:(CGFloat)space sup:(UIView *)superView{
    
    CGFloat viewW = (superView.frame.size.width - left - right - space * (views.count -1))/views.count;
    CGFloat viewH = (superView.frame.size.height - top - bottom);
    for (int i = 0; i < views.count; i++) {
        if ([views[i] isKindOfClass:[UIView class]]) {
            UIView *view = views[i];
            view.frame = CGRectMake(left +(i * (viewW + space)), top, viewW, viewH);
            if (![view.superview isEqual:superView]) {
                [superView addSubview:view];
            }
        }
        if ([views[i] isKindOfClass:[UIButton class]]) {
            UIButton *btn = views[i];
            btn.frame = CGRectMake(left +(i * (viewW + space)), top, viewW, viewH);
            if (![btn.superview isEqual:superView]) {
                [superView addSubview:btn];
            }
        }
        if ([views[i] isKindOfClass:[UILabel class]]) {
            UILabel *lb = views[i];
            lb.frame = CGRectMake(left +(i * (viewW + space)), top, viewW, viewH);
            if (![lb.superview isEqual:superView]) {
                [superView addSubview:lb];
            }
        }
        
    }
    
}


+ (void)verticalViews:(NSArray *)views t:(CGFloat)top b:(CGFloat)bottom l:(CGFloat)left r:(CGFloat)right s:(CGFloat)space sup:(UIView *)superView{
    
    CGFloat viewW = (superView.frame.size.width - left - right);
    CGFloat viewH = (superView.frame.size.height - top - bottom - space * (views.count -1))/views.count;
    for (int i = 0; i < views.count; i++) {
        if ([views[i] isKindOfClass:[UIView class]]) {
            UIView *view = views[i];
            view.frame = CGRectMake(left, top + (space + viewH) * i, viewW, viewH);
            if (![view.superview isEqual:superView]) {
                [superView addSubview:view];
            }
        }
        if ([views[i] isKindOfClass:[UIButton class]]) {
            UIButton *btn = views[i];
            btn.frame = CGRectMake(left, top + (space + viewH) * i, viewW, viewH);
            if (![btn.superview isEqual:superView]) {
                [superView addSubview:btn];
            }
        }
        if ([views[i] isKindOfClass:[UILabel class]]) {
            UILabel *lb = views[i];
            lb.frame = CGRectMake(left, top + (space + viewH) * i, viewW, viewH);
            if (![lb.superview isEqual:superView]) {
                [superView addSubview:lb];
            }
        }
    }
}

+ (void)horAndVerViews:(NSArray *)views
                    t:(CGFloat)top
                    b:(CGFloat)bottom
                    l:(CGFloat)left
                    r:(CGFloat)right
                   hs:(CGFloat)horizontalSpace
                   vs:(CGFloat)verticalSpace
                maxHC:(NSInteger)maxHorizontalCount
                ratio:(CGFloat)ratio
                  sup:(UIView *)superView{
    
    NSInteger column;
    
    if (views.count >= maxHorizontalCount) {
        column = maxHorizontalCount;
    }else{
        column = views.count;
    }

    CGFloat viewW = (superView.frame.size.width - left - right - horizontalSpace * (column -1))/column;
    CGFloat viewH = viewW * ratio;
    
    for (int i = 0; i < views.count; i++) {
        if ([views[i] isKindOfClass:[UIView class]]) {
            UIView *view = views[i];
            view.frame = CGRectMake(left +(i % column * (viewW + horizontalSpace)), top + (i/column * (verticalSpace + viewH)), viewW, viewH);
            if (i == views.count -1) {
                CGRect frame = superView.frame;
                frame.size.height = CGRectGetMaxY(view.frame) + bottom;
                superView.frame = frame;
            }
            if (![view.superview isEqual:superView]) {
                [superView addSubview:view];
            }
        }
        if ([views[i] isKindOfClass:[UIButton class]]) {
            UIButton *btn = views[i];
            btn.frame = CGRectMake(left +(i % column * (viewW + horizontalSpace)), top + (i/column * (verticalSpace + viewH)), viewW, viewH);
            if (i == views.count -1) {
                CGRect frame = superView.frame;
                frame.size.height = CGRectGetMaxY(btn.frame) + bottom;
                superView.frame = frame;
            }
            if (![btn.superview isEqual:superView]) {
                [superView addSubview:btn];
            }
        }
        if ([views[i] isKindOfClass:[UILabel class]]) {
            UILabel *lb = views[i];
            lb.frame = CGRectMake(left +(i % column * (viewW + horizontalSpace)), top + (i/column * (verticalSpace + viewH)), viewW, viewH);
            if (i == views.count -1) {
                CGRect frame = superView.frame;
                frame.size.height = CGRectGetMaxY(lb.frame) + bottom;
                superView.frame = frame;
            }
            if (![lb.superview isEqual:superView]) {
                [superView addSubview:lb];
            }
        }
        
    }
    
    
}


@end
