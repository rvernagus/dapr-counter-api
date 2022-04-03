# Steps
- Build the .NET project: `dotnet publish -c Release`
- Build the image: `docker build . -t yourname/dapr-counter-api:1.x`
- Run the dapr image: ``
- Run the image: `docker run -p 5000:5000 yourname/dapr-counter-api:1.x`