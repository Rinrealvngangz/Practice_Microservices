FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /CouponAPI
EXPOSE 80
COPY *.sln .
COPY Mango.Services.CouponAPI/*.csproj ./Mango.Services.CouponAPI/
RUN dotnet restore

COPY Mango.Services.CouponAPI/. ./Mango.Services.CouponAPI/
WORKDIR /CouponAPI
RUN dotnet publish -c release -o /mangoApp

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /mangoApp
ENV ASPNETCORE_URLS=http://+:80
COPY --from=build /mangoApp ./
ENTRYPOINT ["dotnet", "Mango.Services.CouponAPI.dll"]