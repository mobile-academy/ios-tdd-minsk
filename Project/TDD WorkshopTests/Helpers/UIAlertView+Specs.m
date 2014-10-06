/*
 * Copyright (c) 2014 Mobile Warsaw. All rights reserved.
 */
#import "UIAlertView+Specs.h"

static UIAlertView *lastDisplayedAlertView;

@implementation UIAlertView (Specs)

-(void)show {
    lastDisplayedAlertView = self;
}

+ (UIAlertView *)lastDisplayedAlertView {
    return lastDisplayedAlertView;
}

+(void)afterEach {
    lastDisplayedAlertView = nil;
}

@end
