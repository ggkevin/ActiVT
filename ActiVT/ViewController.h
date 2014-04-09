//
//  ViewController.h
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *passwd;

@end
