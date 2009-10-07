#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSMutableArray * args = [NSMutableArray arrayWithArray:[[NSProcessInfo processInfo] arguments]];
	
	if ([args count] > 1) {
		[args removeObjectAtIndex:0];
		[[NSDistributedNotificationCenter defaultCenter]
		 postNotificationName:@"com.apple.DownloadFileFinished" 
		 object:[args componentsJoinedByString:@" "]];
	}

	[pool drain];
	return 0;
}
