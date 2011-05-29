//
// NSURL+Shortener.m
// Shortener
//
// Created by Árpád Goretity (H2CO3) on 29/04/2011
//

#import "NSURL+Shortener.h"

@implementation NSURL (Shortener)

- (NSURL *) shortURL {

	NSString *uri = [self absoluteString];
	NSString *fmt = [NSString stringWithFormat: @"http://api.bitly.com/v3/shorten?login=%@&apiKey=%@&longUrl=%@&format=txt", BITLY_LOGIN, BITLY_APIKEY, uri];
	NSURL *requestUrl = [NSURL URLWithString: fmt];
	NSString *shortUri = [NSString stringWithContentsOfURL: requestUrl];
	return [NSURL URLWithString: shortUri];

}

@end
