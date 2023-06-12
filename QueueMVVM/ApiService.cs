using System.Threading.Tasks;
using System.Net.Http;
using Newtonsoft.Json;

public class ApiService
{
    private HttpClient _httpClient;

    public ApiService()
    {
        _httpClient = new HttpClient();
    }

    public async Task<User> GetUser(string userId)
    {
        var response = await _httpClient.GetAsync($"https://dummyjson.com/users/{userId}");
        if (response.IsSuccessStatusCode)
        {
            var content = await response.Content.ReadAsStringAsync();
            var user = JsonConvert.DeserializeObject<User>(content);
            return user;
        }
        else
        {
            // Handle API error
           
            return null;
        }
    }
}
