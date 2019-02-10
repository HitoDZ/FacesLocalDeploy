git clone https://github.com/HitoDZ/Faces-Int20h-BackEnd.git

copy-item -path Face\Defaults.cs -destination Faces-Int20h-BackEnd\Api.FacePlusPlus\Defaults.cs
copy-item -path Flickr\Defaults.cs -destination Faces-Int20h-BackEnd\Api.Flickr
copy-item -path Migrations\Defaults.cs -destination Faces-Int20h-BackEnd\Mongo\Mongo.Migrations

dotnet run --project Faces-Int20h-BackEnd\Mongo\Mongo.Migrations\Mongo.Migrations.csproj
dotnet run --project Faces-Int20h-BackEnd\Host\Host.csproj