//
//  RegisterViewController.h
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UITableViewController <UITextFieldDelegate>
- (IBAction)cancelButtonPressed:(id)sender;

- (IBAction)doneButtonPressed:(id)sender;

@property (nonatomic, strong) IBOutlet UITextField * Username;
//@property (nonatomic, strong) IBOutlet UITextField * dob;
@property (nonatomic, strong) IBOutlet UIDatePicker * dob;

@property (nonatomic, strong) IBOutlet UITextField * email;
@property (nonatomic, strong) IBOutlet UITextField * passwd;
@property (nonatomic, strong) IBOutlet UITextField * confirmPasswd;

@end
