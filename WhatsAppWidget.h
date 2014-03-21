//
//  WhatsAppWidget.h
//  WhatsApp Widget
//
//  Created by iMokhles on 20.03.2014.
//  Copyright (c) 2014 iMokhles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <libprowidgets/libprowidgets.h>
#import <libprowidgets/WidgetItems/items.h>

@interface PWWidgetWhatsAppWidget : PWWidget 
- (void)sendWhatsAppMessage:(NSString *)message;
- (void)setFirstResponder;
@end