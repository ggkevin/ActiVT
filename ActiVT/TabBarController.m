//
//  TabBarController.m
//  ActiVT
//
//  Created by Kevin on 11/24/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "TabBarController.h"
#import "SWRevealViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

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
	// Do any additional setup after loading the view.
    
    self.title = @"Activitys";
    
    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.20f alpha:0.4f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
}

- (IBAction)createActivity:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
