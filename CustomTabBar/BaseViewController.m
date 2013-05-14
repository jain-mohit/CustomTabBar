//
//  BaseViewController.m
//  CustomTabBar
//
//  Created by Mohit Jain on 5/13/13.
//  Copyright (c) 2013 Mohit Jain. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
@synthesize tabBarScroller;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)setup {
    [tabBarScroller setContentSize:CGSizeMake(448, 40)];
   
    [self addButtons];
    
    if(IS_IPHONE_5) {
        rect = CGRectMake(0, 0, 320, 499);
    }
    else {
        rect = CGRectMake(0, 0, 320, 412);
    }
}

-(void)addButtons {
    
    for(int i =1;i<=7;i++) {
        UIButton *btn= [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake((i-1)*64, 0, 64, 40);
        btn.backgroundColor = [UIColor blackColor];
        btn.titleLabel.font = [UIFont fontWithName:@"Arial" size:12];
        btn.titleLabel.textColor = [UIColor whiteColor];
        btn.tag = i;
        
        switch (btn.tag) {
            case 1:
                [btn setTitle:@"Tab-1" forState:UIControlStateNormal];
                break;
            case 2:
                [btn setTitle:[NSString stringWithFormat:@"Tab-2"] forState:UIControlStateNormal];
                break;
            case 3:
                [btn setTitle:[NSString stringWithFormat:@"Tab-3"] forState:UIControlStateNormal];
                break;
            case 4:
                [btn setTitle:[NSString stringWithFormat:@"Tab-4"] forState:UIControlStateNormal];
                break;
            case 5:
                [btn setTitle:[NSString stringWithFormat:@"Tab-5"] forState:UIControlStateNormal];
                break;
            case 6:
                [btn setTitle:[NSString stringWithFormat:@"Tab-6"] forState:UIControlStateNormal];
                break;
            case 7:
                [btn setTitle:[NSString stringWithFormat:@"Tab-7"] forState:UIControlStateNormal];
                break;
                
            default:
                break;
        }
        
        [btn addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
        
        [tabBarScroller addSubview:btn];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
