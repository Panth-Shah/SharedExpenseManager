CREATE TABLE [dbo].[UserGroup]
(
	[UserGroupId] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [UserId] INT NOT NULL, 
    [GroupId] INT NOT NULL,
    [CreateDate] DATETIME2 NOT NULL DEFAULT GETDATE(), 
    [LastUpdate] DATETIME2 NOT NULL DEFAULT GETDATE()
    CONSTRAINT [FK_UserGroup_ApplicationUserInformation] FOREIGN KEY ([UserId]) REFERENCES [ApplicationUserInformation]([UserId]), 
    [TransactionAmount] MONEY NOT NULL DEFAULT 0.00, 
    [IsPayer] BIT NULL DEFAULT 0 , 
    CONSTRAINT [FK_UserGroup_Groups] FOREIGN KEY ([GroupId]) REFERENCES [Groups]([GroupId])
)
