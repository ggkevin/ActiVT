//
//  Account.h
//  ActiVT
//
//  Created by Kevin on 12/24/2013.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBSenderReceiver.h"

@interface Account : NSObject{
    NSString        * m_userID;
    NSString        * m_password;
    NSString        * m_Nickname;
    NSString        * m_Email;
    NSString        * m_Birthday;
    NSMutableArray  * m_ActivityList;
    NSMutableArray  * m_Requests;
    
}

@property(nonatomic) NSString       * m_userID;
@property(nonatomic) NSString       * m_password;
@property(nonatomic) NSString       * m_Nickname;
@property(nonatomic) NSString       * m_Email;
@property(nonatomic) NSString       * m_Birthday;
@property(nonatomic) NSMutableArray * m_ActivityList;
@property(nonatomic) NSMutableArray * m_Requests;

/*
 *  basic load user's profile
 */
-(id)initWithm_ID:(NSString*)myID m_Password:(NSString *)myPassword m_Nickname:(NSString*)myNickname m_Email:(NSString *)myEmail m_DOB:(NSString*)myDOB;

/*
 *  Load user's activities
 */
-(void) loadActivities;

/*
 *  Load user's requests
 */
-(void) loadMyRequests;

@end

