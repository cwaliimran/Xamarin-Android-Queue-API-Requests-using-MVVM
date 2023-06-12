using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Android.Widget;
using Android.Util;
using Android;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using AndroidX.Lifecycle;

namespace QueueMVVM
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, IViewModelCallback
    {
        private UserViewModel _userViewModel;
        TextView nameTextView;
        ProgressBar progressBar1;
        private bool isRequestInProgress = false;

        List<int> ids = new List<int>();

        protected override async void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            //Toolbar toolbar = FindViewById<Toolbar>(Resource.Id.toolbar);
            //SetSupportActionBar(toolbar);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab);
            fab.Click += FabOnClick;

            _userViewModel = new UserViewModel();
            _userViewModel.SetCallback(this);
            // Set up data binding between the view model and the view
            // Bind User property to UI elements
            nameTextView = FindViewById<TextView>(Resource.Id.tvName);
            progressBar1 = FindViewById<ProgressBar>(Resource.Id.progressBar1);

            for(int i = 0; i<5; i++)
            {
                //add 5 ids
                ids.Add(i);
            }


            fetchData();
        }

        private void fetchData()
        {

            //wait if request already in progress
            if (!isRequestInProgress)
            {
                isRequestInProgress = true;
                if(ids.Count > 0)
                {
                    Log.Debug("MAINTAG", "calling api");
                    LoadUserData(ids.FirstOrDefault());
                }
                else
                {
                    Log.Debug("MAINTAG", "Requests Completed");
                }
                Thread.Sleep(2000);
            }
        }

        private async void LoadUserData(int i)
        {
            Log.Debug("MAINTAG", "started");
            progressBar1.Visibility = Android.Views.ViewStates.Visible;
            if (i == 2 || i == 3 || i==4)
            {
                Log.Debug("MAINTAG", "Pos:" + i);
                progressBar1.Visibility = Android.Views.ViewStates.Gone;
                string userInput = await DialogHelper.ShowInputDialogAsync(this, "Enter Text", "Please enter some text:" + i);
                if (userInput != null)
                {

                    progressBar1.Visibility = Android.Views.ViewStates.Visible;

                    Log.Debug("MAINTAG", "yes clicked");
                    // User entered a value
                    // Handle the user input

                    await _userViewModel.LoadUser("1");
                    nameTextView.Text = nameTextView.Text + "\n" + _userViewModel.User.firstName + " >age:" + _userViewModel.User.age + "\n>Pos:" + i;
                    progressBar1.Visibility = Android.Views.ViewStates.Gone;
                    Log.Debug("MAINTAG", "ended");
                    ids.RemoveAt(0);
                    isRequestInProgress = false;
                    fetchData();

                }
                else
                {
                    Log.Debug("MAINTAG", "no clicked");
                    // User canceled the dialog
                    // Handle cancelation
                    progressBar1.Visibility = Android.Views.ViewStates.Gone;
                    Toast.MakeText(this, "Dismiss all requests", 0).Show();
                }

            }
            else
            {

                await _userViewModel.LoadUser("1");
                nameTextView.Text = nameTextView.Text + "\n" + _userViewModel.User.firstName + " >age:" + _userViewModel.User.age + "\n>Pos:" + i;
                progressBar1.Visibility = Android.Views.ViewStates.Gone;
                Log.Debug("MAINTAG", "ended");
                ids.RemoveAt(0);
                isRequestInProgress = false;
                fetchData();
            }

        }



        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            View view = (View)sender;
            Snackbar.Make(view, "Replace with your own action", Snackbar.LengthLong)
                .SetAction("Action", (View.IOnClickListener)null).Show();
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        void IViewModelCallback.OnCallback()
        {

            //Toast.MakeText(this, "View model callback", 0).Show();
        }
    }
}

