//
//  DBSenderReceiver.m
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "DBSenderReceiver.h"

@implementation DBSenderReceiver

+ (BOOL) Reg_passwd:(NSString*)passwd Reg_uname:(NSString *)uname Reg_email:(NSString*)email Reg_dob:(NSString*)dob {
    
    NSString *urlOriginal = [NSString stringWithFormat:@"http://activt.aws.af.cm/register.php?passwd=%@&email=%@&dob=%@&nickname=%@" ,passwd, email, dob, uname];
    
    //make the url "space char" proof
    NSString *urlStr = [urlOriginal stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//    DEBUG: url
//    NSLog(@"====DBsenderReceiver====: %@", urlStr);
    
    NSURL *url = [NSURL URLWithString:urlStr];
    //submit the registra query
    NSData *dataURL = [NSData dataWithContentsOfURL:url];
    
    //analysing result
    NSString *result = [[NSString alloc] initWithData:dataURL encoding:NSUTF8StringEncoding];
    
//    DEBUG: result
//    NSLog(@"====DBsenderReceiver====: %@", result);
    if ([result isEqualToString:@"registered!"]) {
        return true;
    }
    
    return false;
}

         


@end
