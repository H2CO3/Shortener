//
// NSURL+Shortener.h
// Shortener
//
// Created by Árpád Goretity (H2CO3) on 19/05/2011
//

#define BITLY_LOGIN	@"your_login_name"
#define BITLY_APIKEY	@"R_abcdefghijklmnopqrstuvwxyz0123456789"

#import <Foundation/Foundation.h>

@interface NSURL (Shortener)

- (NSURL *) shortURL;

@end

