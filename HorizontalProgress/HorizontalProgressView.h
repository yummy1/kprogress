//
//  HorizontalProgressView.h
//  HorizontalProgress
//
//  Created by yummy on 17/04/19.
//  Copyright © 2017年 yummy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ProgressLevelTextPosition) {
    topPostion = 0,
    bottomPosition = 1
};

@interface HorizontalProgressView : UIView

//Color of progress unachieved
@property(nonatomic, copy) UIColor *unachievedColor;
//Color of progress achieved
@property(nonatomic, copy) UIColor *achievedColor;
//Maximum progress point radius
@property CGFloat pointMaxRadius;
//Maximum progress line height
@property NSUInteger lineMaxHeight;
//Current progress level
@property NSInteger currentLevel;
//Current progress animation duration
@property CFTimeInterval animationDuration;
//Tip label position relative to progress line
@property ProgressLevelTextPosition textPosition;

//Array contained strings of progress tip label
//NSString elements only
@property(nonatomic, copy) NSArray *progressLevelArray;

//Progress fill animation start
- (void)startAnimation;

@end
