//
//  ViewController.m
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize email = _email;
@synthesize passwd = _passwd;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    //auto animation when each textfield are clicked
    if (textField == self.email) {
        
        [self.passwd becomeFirstResponder];
    }
    else if (textField == self.passwd) {
        
        
        //hide the keyboard
        [textField resignFirstResponder];
    }
    return NO;
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    if (textField) {
        [UIView beginAnimations:Nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame = CGRectMake(self.view.frame.origin.x,
                                     (self.view.frame.origin.y - 90),
                                     self.view.frame.size.width,
                                     self.view.frame.size.height);
        [UIView commitAnimations];
    }
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    if (textField) {
        [UIView beginAnimations:Nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationBeginsFromCurrentState:YES];
        self.view.frame = CGRectMake(self.view.frame.origin.x,
                                     (self.view.frame.origin.y + 90),
                                     self.view.frame.size.width,
                                     self.view.frame.size.height);
        [UIView commitAnimations];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
