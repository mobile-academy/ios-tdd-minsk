#import "CommentValidator.h"


@implementation CommentValidator

- (BOOL)validateTextControl:(id <TextControl>)textControl {
    NSUInteger length = [textControl.text length];
    BOOL isValid = length > 0 && length >= 10;
    if (!isValid) {
        [self displayAlertViewWithText:@"Less than 10 characters!"];
        textControl.text = nil;
    }
    return isValid;
}

@end
