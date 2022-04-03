FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY bin/Release/net6.0/publish/ App/
ENV ASPNETCORE_URLS http://+:5000
WORKDIR /App
ENTRYPOINT ["dotnet", "dapr-counter-api.dll"]