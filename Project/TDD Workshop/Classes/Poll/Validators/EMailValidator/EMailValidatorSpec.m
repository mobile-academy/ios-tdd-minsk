#import "Specs.h"

#import "EMailValidator.h"
#import "UITextField+TextControl.h"
#import "UIAlertView+Specs.h"

SPEC_BEGIN(EMailValidatorSpec)

describe(@"EMailValidator", ^{
    __block EMailValidator *validator;

    beforeEach(^{
        validator = [EMailValidator new];
    });

    afterEach(^{
        validator = nil;
    });

    describe(@"validation", ^{

        __block UITextField *textField;

        beforeEach(^{
            textField = [[UITextField alloc] init];
        });

        context(@"when the text has is a valid email", ^{

            __block BOOL isValid;

            beforeEach(^{
                textField.text = @"example@example.com";
                isValid = [validator validateTextControl:textField];
            });

            it(@"should be valid", ^{
                expect(isValid).to.beTruthy();
            });

            it(@"should not clear the text field", ^{
                expect(textField.text).to.equal(@"example@example.com");
            });

            describe(@"last displayed alert view", ^{

                __block UIAlertView *lastDisplayedAlertView;

                beforeEach(^{
                    lastDisplayedAlertView = [UIAlertView lastDisplayedAlertView];
                });

                it(@"should be nil", ^{
                    expect(lastDisplayedAlertView).to.beNil();
                });
            });
        });

        context(@"when the text is not a valid email", ^{
            __block BOOL isValid;

            beforeEach(^{
                textField.text = @"example.com";
                isValid = [validator validateTextControl:textField];
            });

            it(@"should not be valid", ^{
                expect(isValid).to.beFalsy();
            });

            it(@"should have no text", ^{
                expect(textField.text.length).to.equal(0);
            });

            describe(@"last displayed alert view", ^{

                __block UIAlertView *lastDisplayedAlertView;

                beforeEach(^{
                    lastDisplayedAlertView = [UIAlertView lastDisplayedAlertView];
                });

                it(@"should have a warning message", ^{
                    expect(lastDisplayedAlertView.message).to.equal(@"Wrong email address!");
                });
            });
        });
    });
});

SPEC_END
