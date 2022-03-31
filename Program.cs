using Dapr.Client;

const string storeName = "statestore";
const string key = "counter";

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", async () => 
{
    var daprClient = new DaprClientBuilder().Build();
    var counter = await daprClient.GetStateAsync<int>(storeName, key);
    await daprClient.SaveStateAsync(storeName, key, counter+1);
    return counter;
});

await app.RunAsync();
