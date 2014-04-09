//
//  RegisterViewController.m
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "RegisterViewController.h"
#import "DBSenderReceiver.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize Username = _Username;
@synthesize dob = _dob;
@synthesize email = _email;
@synthesize passwd = _passwd;
@synthesize confirmPasswd = _confirmPasswd;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.Username) {
        
        [textField resignFirstResponder];
    }
    else if (textField == self.email) {
        [self.passwd becomeFirstResponder];
        [self.tableView scrollRectToVisible:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y - 40, self.view.frame.size.width, self.view.frame.size.height) animated:YES];
    }
    else if (textField == self.passwd) {
        [self.confirmPasswd becomeFirstResponder];
        
        [self.tableView scrollRectToVisible:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + 5, self.view.frame.size.width, self.view.frame.size.height) animated:YES];
    }
    else if (textField == self.confirmPasswd) {
        
        [textField resignFirstResponder];
    }
    return NO;
}


- (void) textFieldDidBeginEditing:(UITextField *)textField {
   //nothing needs to be done here
}

-(void) textFieldDidEndEditing:(UITextField *)textField {

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(void) cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) doneButtonPressed:(id)sender {
    //check for register sytex
    if (![_passwd.text isEqualToString:_confirmPasswd.text]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registration Error"
                                                        message:@"Passwords do not match!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    else {
        //get the string of YYYY/MM/DD
        NSCalendar *calendar = [NSCalendar currentCalendar];
        int year = [[calendar components:NSYearCalendarUnit fromDate:[_dob date]] year];
        int month = [[calendar components:NSMonthCalendarUnit fromDate:[_dob date]] month];
        int day = [[calendar components:NSDayCalendarUnit fromDate:[_dob date]] day];
//        NSLog(@"======RegisterVC=====: %@", [NSString stringWithFormat:@"%d/%d/%d",year,month,day]);
        
        //make the NSString type date
        NSString *birthday = [NSString stringWithFormat:@"%d/%d/%d",year,month,day];
        
        //submit register request
        bool result = [DBSenderReceiver Reg_passwd:_passwd.text Reg_uname:_Username.text Reg_email:_email.text Reg_dob:birthday ]; 
        
        
        if ( result ) {
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registration Error"
                                                            message:@"Maybe your internet is down?"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
    }
}



@end
