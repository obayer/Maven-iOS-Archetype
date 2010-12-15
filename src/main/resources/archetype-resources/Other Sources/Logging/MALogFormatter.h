//
//  MALogFormatter.h
//  ${artifactId}
//
//  Created by Oliver Bayer on 12/7/10.
//  Copyright 2010 Oliver Bayer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDLog.h"

/**
 * Custom log formatter for cocoa lumberjack. 
 * The log output is formatted: [timestamp] - LOGLEVEL FILENAME:LINE - LOGMESSAGE
 *
 * @author obayer
 * @since 0.2
 *
 */
@interface MALogFormatter : NSObject <DDLogFormatter> {
    NSDateFormatter *dateFormatter;
}

@end
