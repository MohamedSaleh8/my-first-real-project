
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS builder

WORKDIR /app

COPY Worker.csproj .

RUN dotnet restore
COPY . .

RUN dotnet publish -c Release -o /publish

FROM mcr.microsoft.com/dotnet/runtime:7.0

WORKDIR /app

COPY --from=builder /publish .

CMD ["dotnet", "Worker.dll"]