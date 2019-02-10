__Platform__: Windows 10

__Requirements__: 
 * [.Net Core 2.2](https://dotnet.microsoft.com/download/dotnet-core/2.2)
 * [MongoDB 4.0](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/)
 * [NodeJS](https://nodejs.org/uk/download/)

To __script run__:
* Download [cmder](http://cmder.net/) for best experience 
* launch LocalDeployBE.ps1 
* launch LocalDeployFront.ps1

To __manually run__ application: 
 * clone repositories 
  - https://github.com/HitoDZ/Faces-Int20h-BackEnd.git
  - https://github.com/v-zhuravsky/int20h-2019-test-task-front-end

 * copy 
 
     file Face\Defaults.cs_ to folder _Faces-Int20h-BackEnd\Api.FacePlusPlus\Defaults.cs
     file Flickr\Defaults.cs_ to folder _Faces-Int20h-BackEnd\Api.Flickr
     file Migrations\Defaults.cs_ to folder _Faces-Int20h-BackEnd\Mongo\Mongo.Migrations
     
     Or simply run this in powershell:
     
        copy-item -path Face\Defaults.cs -destination Faces-Int20h-BackEnd\Api.FacePlusPlus\Defaults.cs
        copy-item -path Flickr\Defaults.cs -destination Faces-Int20h-BackEnd\Api.Flickr
        copy-item -path Migrations\Defaults.cs -destination Faces-Int20h-BackEnd\Mongo\Mongo.Migrations
 * open [cmder](http://cmder.net/) (or Power Shell) and run next commands from repository dir

    dotnet run --project Faces-Int20h-BackEnd\Mongo\Mongo.Migrations\Mongo.Migrations.csproj
    dotnet run --project Faces-Int20h-BackEnd\Host\Host.csproj
 * in another window from repository dir run next
cd int20h-2019-test-task-front-end
npm i
npm start
