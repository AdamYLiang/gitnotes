# Steps for proper debugging

0. Understand how your code works and adhere to good coding practices.
   * The best cure is prevention. If you follow the above, you will not only be less prone to making errors, but fixing the errors will be easier.
   * You can't debug your code properly if you don't understand it. As you're writing your code, ask yourself what each line of code does. While pairing, don't be afraid to ask for clarification!

1. Identify the problem:
   * Was an error thrown? If so, proceed to step 2.
   * What is the behavior that we want/expect?
   * How does the current behavior differ from the expected behavior?

2. Identify what is causing the problem:
   * Read your error messages. More often than not, error messages will give you an exact line number to begin your search, and Ruby/JavaScript errors are usually quite explicit about what caused the error to be thrown.
   * Seriously, read your error messages!
   * Where does the issue first arise? Use debuggers to track the state of your code (variables, stack level, etc) until you find where behavior ceases to be as expected.
   * Start with where you think the issue is most likely coming from. Is the state as you would expect it to be at that point? If so, the problem occurs after this point. If not, then the problem occurs earlier in your code.
   
3. Utilize the resources at your disposal.
   * When pair programming, your pair is your first and most important resource. Discuss the problem with your pair, and brainstorm solutions.
   * Other resources include, but are not limited to: lecture notes, curriculum/hw notes, and official documentation.
   * Feel free to hit the ask a question button!