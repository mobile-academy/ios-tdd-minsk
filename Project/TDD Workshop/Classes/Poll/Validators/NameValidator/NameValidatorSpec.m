#import "Specs.h"

#import "NameValidator.h"
#import "UITextView+TextControl.h"


SPEC_BEGIN(NameValidatorSpec)

describe(@"NameValidator", ^{
    __block NameValidator *validator;

    beforeEach(^{
        validator = [NameValidator new];
    });

    afterEach(^{
        validator = nil;
    });

    __block UITextView *textField;

    beforeEach(^{
        textField = [[UITextView alloc] init];
    });

    context(@"when the text is a valid name", ^{

        __block BOOL isValid;

        beforeEach(^{
            textField.text = @"John Appleseed";
            isValid = [validator validateTextControl:textField];
        });

        it(@"should be valid", ^{
            expect(isValid).to.beTruthy();
        });

        it(@"should clear the text field", ^{
            expect(textField.text).to.equal(@"John Dow");
        });
    });

    context(@"when the text is not a valid name", ^{
        __block BOOL isValid;

        beforeEach(^{
            textField.text = @"John Appleseed 2";
            isValid = [validator validateTextControl:textField];
        });

        it(@"should not be valid", ^{
            expect(isValid).to.beFalsy();
        });

        it(@"should have no text", ^{
            expect(textField.text.length).to.equal(0);
        });
    });
});

SPEC_END
