//
//  MALogFormatter.m
//  ${artifactId}
//
//  Created by Oliver Bayer on 12/7/10.
//  Copyright 2010 Oliver Bayer. All rights reserved.
//

#import "MALogFormatter.h"


@implementation MALogFormatter

/**
 * Designated initializer.                                                                                                                                                                                                                                                                                                                                                                                                                          
 */
- (id)init {
    if((self = [super init])) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
        [dateFormatter setDateFormat:@"dd MMM yyyy HH:mm:ss,SSS"];
    }
    return self;
}

/**
 * Is called by the logger to create custom formated log output. 
 *
 * @param logMessage The log message
 * @return Custom formated log message
 */
- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *logLevel = @"DEFAULT";
    
    switch (logMessage->logLevel) {
        case LOG_LEVEL_ERROR: 
            logLevel = @"ERROR"; 
            break;
        case LOG_LEVEL_WARN: 
            logLevel = @"WARN"; 
            break;
        case LOG_LEVEL_INFO: 
            logLevel = @"INFO"; 
            break;
        case LOG_LEVEL_VERBOSE: 
            logLevel = @"VERBOSE"; 
            break;
    }
    
    NSString *dateAndTime = [dateFormatter stringFromDate:(logMessage->timestamp)];
    NSString *logMsg = logMessage->logMsg;
    
    return [NSString stringWithFormat:@"[%@] - %@ %@:%d - %@", 
                                        dateAndTime, logLevel, 
                                        [logMessage fileName], 
                                       logMessage->lineNumber, 
                                                      logMsg];
}

- (void)dealloc {
    [super dealloc];
}


@end
