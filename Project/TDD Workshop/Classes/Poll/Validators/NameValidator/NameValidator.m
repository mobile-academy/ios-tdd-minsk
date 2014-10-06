#import "NameValidator.h"


@implementation NameValidator

- (BOOL)validateTextControl:(id <TextControl>)textControl {
    BOOL isNotValid = [textControl.text length] > 0 && [textControl.text rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location != NSNotFound;
    if (isNotValid) {
        [self displayAlertViewWithText:@"Wrong characters!"];
        textControl.text = nil;
    }
    return !isNotValid;
}

@end
