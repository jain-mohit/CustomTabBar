//
//  BaseViewController.h
//  CustomTabBar
//
//  Created by Mohit Jain on 5/13/13.
//  Copyright (c) 2013 Mohit Jain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstTabController,SecondTabController,ThirdTabController,FourthTabBarController;
@class FifthTabBarController, SixthTabBarController, SeventhTabBarController;

@interface BaseViewController : UIViewController <UIScrollViewDelegate> {
    
    CGRect rect;
}

@property(nonatomic,strong) IBOutlet UIScrollView *tabBarScroller;
@property(nonatomic,strong) UIStoryboard *storyBoard;

@property(nonatomic,strong) FirstTabController *firstTab;
@property(nonatomic,strong) SecondTabController *secondTab;
@property(nonatomic,strong) ThirdTabController *thirdTab;
@property(nonatomic,strong) FourthTabBarController *fourthTab;
@property(nonatomic,strong) FifthTabBarController *fifthTab;
@property(nonatomic,strong) SixthTabBarController *sixthTab;
@property(nonatomic,strong) SeventhTabBarController *seventhTab;

@property(nonatomic,strong) UINavigationController *navFirstTab;
@property(nonatomic,strong) UINavigationController *navSecondTab;
@property(nonatomic,strong) UINavigationController *navThirdTab;
@property(nonatomic,strong) UINavigationController *navFourthTab;
@property(nonatomic,strong) UINavigationController *navFifthTab;
@property(nonatomic,strong) UINavigationController *navSixthTab;
@property(nonatomic,strong) UINavigationController *navSeventhTab;

@property(nonatomic, strong)IBOutlet UIView *currentView;




@end
