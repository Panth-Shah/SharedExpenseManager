CREATE TABLE [dbo].[ApplicationUserInformation]
(
	[UserId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [UserFirstName] NVARCHAR(500) NOT NULL, 
    [UserLastName] NVARCHAR(500) NULL, 
    [UserEmailId] NVARCHAR(50) NOT NULL, 
    [UserPhoneNumber] NVARCHAR(50) NULL, 
    [CreateDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [LastUpdate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [LogInId] INT NOT NULL, 
    CONSTRAINT [FK_ApplicationUserInformation_UserLogIn] FOREIGN KEY ([LogInId]) REFERENCES [UserLogIn]([LogInId])
)
