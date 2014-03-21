//
//  WhatsAppWidget.m
//  WhatsApp Widget
//
//  Created by iMokhles on 20.03.2014.
//  Copyright (c) 2014 iMokhles. All rights reserved.
//

#import "WhatsAppWidget.h"

@implementation PWWidgetWhatsAppWidget

- (void)submitEventHandler:(NSDictionary *)values {
    NSString *value = values[@"textarea"];
    
    if (value != nil && [value length] > 0) {
		// sending whatsapp message
        [self sendWhatsAppMessage:value];
        NSLog (@"WhatsApp Widget VALUE: %@", value);
	} else {
		[self setFirstResponder];
	}
	//[self showMessage:value title:@"Sent"];
}

- (void)sendWhatsAppMessage:(NSString *)message {
    // Taken from WhatsAtor (My Old Tweak)
    
    // getting link
    NSString *WAURL = @"whatsapp://";
    // using whatsapp api
    WAURL = [NSString stringWithFormat:@"%@send?text=%@", WAURL, message];
    // Encoding to support Arabic ;)
    NSURL *openWhats = [NSURL URLWithString:[WAURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    // open whatsapp app
    [[UIApplication sharedApplication] openURL:openWhats];
    NSLog (@"WhatsApp Widget URL: %@", openWhats);
}

- (void)setFirstResponder {
	PWWidgetItem *message = [self.defaultItemViewController itemWithKey:@"textarea"];
	[message becomeFirstResponder];
}

- (void)dealloc {
	// release everything here
	[super dealloc];
}

@end