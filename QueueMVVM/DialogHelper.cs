using System;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.Widget;

public class DialogHelper
{
    public static async Task<string> ShowInputDialogAsync(Context context, string title, string message)
    {
        var tcs = new TaskCompletionSource<string>();

        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.SetTitle(title);
        builder.SetMessage(message);

        EditText input = new EditText(context);
        builder.SetView(input);

        builder.SetPositiveButton("OK", (s, e) =>
        {
            tcs.SetResult(input.Text);
        });

        builder.SetNegativeButton("Cancel", (s, e) =>
        {
            tcs.SetResult(null);
        });

        AlertDialog dialog = builder.Create();
        dialog.Show();

        return await tcs.Task;
    }
}
