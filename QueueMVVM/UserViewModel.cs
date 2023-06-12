using System.ComponentModel;
using System.Threading.Tasks;


public interface IViewModelCallback
{
    void OnCallback();
}

public class UserViewModel : INotifyPropertyChanged
{
    //callback
    private IViewModelCallback callback;

    public void SetCallback(IViewModelCallback callback)
    {
        this.callback = callback;
    }

    private void InvokeCallback()
    {
        // Invoke the callback method
        callback?.OnCallback();
    }
    private ApiService _apiService;
    private User _user;

    public User User
    {
        get { return _user; }
        set
        {
            _user = value;
            OnPropertyChanged(nameof(User));
        }
    }

    public UserViewModel()
    {
        _apiService = new ApiService();
    }

    public async Task LoadUser(string userId)
    {
        User = await _apiService.GetUser(userId);
       
    }

    // Implement INotifyPropertyChanged interface
    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged(string propertyName)
    {
        InvokeCallback();
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
