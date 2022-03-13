/**
*  Login progress indicator
 *
 *  In this exercise, we will add progress indicator to the CustomElevatedButton
 *  and use it to simulate login progress when click the login button in the HomeScreen.
 *
 *
* */


//TODO 1 - Open the CustomElevatedButton widget file
//TODO 2 - At the a bool loading property to the class.
//TODO 3 - Add the new property to the class named constructor, set the default value to be false
///...
///final double height;
///final bool loading;
///
///   const CustomElevatedButton({
///     Key? key,
///     this.onPressed,
///     required this.child,
///     this.height = 50,
///     this.loading = false,
///   }) : super(key: key);
///
//TODO 4 - Set the button child depends the loading property, use the ternary statement
/// child: loading ? CircularProgressIndicator() : this.child
//TODO 5 - We also want to disable the button during loading state
///        We can do this by setting the onPressed to null while loading
//TODO 6 - Use the ternary statement to set the onPressed to null while loading
/// onPressed: loading ? null : this.onPressed

/**
*  Simulate login state in HomeScreen
 *  To simulate first we need to change it to a Stateful Widget
 *  Then we can add loading state property and pass it the the Login button.
 *
 *  To Simulate login state we will use an Async method which simulate a fake long process
 *  We will use the setState method to control the loading state.
* */

//TODO 7 - Open the HomeScreen widget
//TODO 8 - Stand on the HomeScreen class name
//TODO 9 - Press Option+Enter, from the dialog select Convert to StateFul Widget
//TODO 10 - Notice that the Widget changed to a Stateful widget with a State<> class.
//TODO 11 - Inside the State class, above the build method, add bool _loading property and set it to false
/// class _HomeScreenState extends State<HomeScreen> {
///
/// bool _loading = false;
///
/// @override
/// Widget build(BuildContext context){..
//TODO 12 - Under the new property and above the build method create _setLoading method
///void _setLoading(bool loading){
///     setState(() {
///       _loading = loading;
///     });
///   }
///
//TODO 12 - setLoading method, create another _login() method
/// void _login() {
///     setState(() {
///       _loading = true;
///     });
///     Future.delayed(Duration(seconds: 3), (){
///       _loading = false;
///     });
///   }
//TODO 13 - Move the call to navigate GalleryScreen to the end of the _login method
//TODO 14 - Add the _loading property to the Login button
//TODO 15 - In the Login button, call the _login method from the onPressed callback
///CustomElevatedButton(
///                 loading: _loading,
///                 child: Text("Login"),
///                 onPressed: (){
///                   print("Button Pressed");
///                   _login();
///                 },
///               )
///
//TODO 16 - Do hot reload, click on the login button and watch the progress indicator