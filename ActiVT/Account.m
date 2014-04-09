//
//  Account.m
//  ActiVT
//
//  Created by Kevin on 12/24/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "Account.h"

@implementation Account

@synthesize m_userID;
@synthesize m_password;
@synthesize m_Nickname;
@synthesize m_Email;
@synthesize m_Birthday;
@synthesize m_ActivityList;
@synthesize m_Requests;

-(id)initWithm_ID:(NSString*)myID m_Password:(NSString *)myPassword m_Nickname:(NSString*)myNickname m_Email:(NSString *)myEmail m_DOB:(NSString*)myDOB{
    
    if (self = [super init]) {
        //initialization
        m_userID    =   myID;
        m_password  =   myPassword;
        m_Nickname  =   myNickname;
        m_Email     =   myEmail;
        m_Birthday  =   myDOB;
    }
    return self;
}

-(void)loadActivities{
    m_ActivityList = [DBSenderReceiver LoadActivityWithID:m_userID];
}


-(void)loadMyRequests{
    m_Requests = [DBSenderReceiver LoadRequestWithID:m_userID];
}

@end
