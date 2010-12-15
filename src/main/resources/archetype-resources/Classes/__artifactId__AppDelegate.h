//
//  ${artifactId}AppDelegate.h
//  ${artifactId}
//
//  Created by _developer_ on 12.12.10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ${artifactId}ViewController;

@interface ${artifactId}AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ${artifactId}ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ${artifactId}ViewController *viewController;

@end

