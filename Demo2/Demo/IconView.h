//
//  IconView.h
//  Demo2
//
//  Created by Ruslan on 4/17/20.
//  Copyright © 2020 Ruslan Filistovich. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, IconViewType) {
    IconViewTypeCheckmark = 0,
    IconViewTypeHeart = 1
};

@interface IconView : UIView

@property (nonatomic, assign) IconViewType type;

@end

NS_ASSUME_NONNULL_END
