//http://stackoverflow.com/questions/18759206/how-to-add-subview-inside-uialertview-for-ios-7

You can really change accessoryView to customContentView in iOS7 UIAlertView

[alertView setValue:customContentView forKey:@"accessoryView"];

**Try this code:**

UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"TEST" message:@"subview" delegate:nil cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
[av setValue:v forKey:@"accessoryView"];
v.backgroundColor = [UIColor yellowColor];
[av show];

Remember that you need set custom accessoryView before the call [alertView show]
