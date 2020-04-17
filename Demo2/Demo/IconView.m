//
//  IconView.m
//  Demo2
//
//  Created by Ruslan on 4/17/20.
//  Copyright © 2020 Ruslan Filistovich. All rights reserved.
//

#import "IconView.h"

@implementation IconView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    switch (self.type) {
        case IconViewTypeCheckmark:
            [self drawCheckmark:rect];
            break;
        case IconViewTypeHeart:
            [self drawHeart:rect];
        default:
            break;
    }
}

-(void)drawCheckmark:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1);
    CGContextSetLineWidth(context, 0.03 * rect.size.width);
    
    CGFloat height = rect.size.height / 2;
    
    CGContextMoveToPoint(context, rect.size.width / 2 - rect.size.width * 0.34 / 2, rect.size.height / 2);
    CGContextAddLineToPoint(context, rect.size.width / 2 - rect.size.width * 0.34 / 2 + rect.size.width * 0.12, height + rect.size.width * 0.12);
    
    CGContextAddLineToPoint(context, rect.size.width / 2 - rect.size.width * 0.34 / 2 + 3 * rect.size.width * 0.12, height - rect.size.width * 0.12);
    CGContextStrokePath(context);
}


- (void)drawHeart:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 0, 0, 0, 1);
    CGContextSetLineWidth(context, 0.03 * rect.size.width);
    
    CGFloat multiplier = rect.size.width / 15;
    
    CGContextMoveToPoint(context,
                         rect.size.width/2 + 0.1 * multiplier,
                         rect.size.height/2 + 3 * multiplier);
    CGContextAddCurveToPoint(context,
                             rect.size.width/2 - 5 * multiplier,
                             rect.size.height/2 - 1.5 * multiplier,
                             rect.size.width/2 - 2 * multiplier,
                             rect.size.height/2 - 4 * multiplier,
                             rect.size.width/2 + 0.1 * multiplier,
                             rect.size.height/2 - 2 * multiplier);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context,
                         rect.size.width/2 - 0.1 * multiplier,
                         rect.size.height/2 + 3 * multiplier);
    CGContextAddCurveToPoint(context,
                             rect.size.width/2 + 5 * multiplier,
                             rect.size.height/2 - 1.5 * multiplier,
                             rect.size.width/2 + 2 * multiplier,
                             rect.size.height/2 - 4 * multiplier,
                             rect.size.height/2 - 0.1 * multiplier,
                             rect.size.height/2 - 2 * multiplier);
    CGContextStrokePath(context);
    
}


@end
