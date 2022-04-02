FROM mcr.microsoft.com/dotnet/sdk:6.0
EXPOSE 5000
EXPOSE 5001
COPY bin/Release/net6.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "dapr-counter-api.dll"]