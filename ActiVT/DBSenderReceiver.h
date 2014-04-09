//
//  .h
//  ActiVT
//
//  Created by Kevin on 11/19/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBSenderReceiver : NSObject{
    
    
}


// Register new account
+ (BOOL) Reg_passwd:(NSString*)passwd Reg_uname:(NSString *)uname Reg_email:(NSString*)email Reg_dob:(NSString*)dob;


// Load Account activities
+ (NSMutableArray*) LoadActivityWithID:(NSString*)userID;

// Load Account requests
+ (NSMutableArray*) LoadRequestWithID:(NSString*)userID;










@end
