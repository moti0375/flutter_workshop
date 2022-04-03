/**
 *   Custom Elevated Button
 */

//TODO 1 - Under the lib directory, create new ui folder/package
//TODO 2 - In the new directory, create custom_elevated_button.dart file
//TODO 3 - In the new file, create CustomElevatedButton class which extends StatelessWidget
//TODO 4 - Override the build method and return Container()
//TODO 5 - Go to the home_screen.dart, copy all ElevatedButton login button code
//TODO 6 - Paste the code as the child of the Container in the new CustomElevatedButton Widget
//TODO 7 - At the top of the CustomElevatedButton class, declare to class members:
/// final VoidCallback? onPressed;
/// final String title;
/// final double height;
/// final bool loading;
//TODO 8 - Create named constructor with these members, make the child required:
/// const CustomRaisedButton({Key? key,
///                           this.onPressed,
///                           required this.child,
///                           this.height = 50.0,
///                           this.loading = false,
///                           },) : super(key: key);
//TODO 9 - Set the Container height
/// Container(
///   height: this.height,
///   child: ElevatedButton(...)
/// )
//TODO 10 - Replace the onPressed and the child with the class members:
/// ElevatedButton(
///    child: this.title
///    onPressed: this.onPressed
/// )
///
///

/**
 *   Styling the Button
 */

//TODO 11 - For now, we will style the button locally in the Widget, later we will learn how to
///        give buttons theme to the entire application, include support in Dark mode!
//TODO 12 - Inside the ElevatedButton constructor, add a style property
//TODO 13 - Define the style using the styleForm function as following:
/// style: ElevatedButton.styleFrom(
///               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
/// )
/// ElevatedButton(
///     style: ElevatedButton.styleFrom(...),
///     Text(this.title)
///     onPressed:this.onPressed;
/// )
///
/**
 *   Use new CustomElevatedButton in code
 */

//TODO 14 - Go to home_screen, replace the ElevatedButton with the new CustomElevatedButton you've just created.
///   CustomElevatedButton(
///     title: "Login",
///      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => GalleryScreen()}),
///     )//CustomElevatedButton
//TODO 15 - Repeat step 13 for both buttons in the GalleryScreen, inside the _buildPageButton method
/// Widget _buildPageButton({required String title, Function()? onPressed}) {
///     return Padding(
///              padding: EdgeInsets.symmetric(horizontal: 4),
///              child: CustomElevatedButton(onPressed: onPressed, title: title),
///           );
///     }
///
//TODO 16 - Do Hot reload, check that all buttons working properly