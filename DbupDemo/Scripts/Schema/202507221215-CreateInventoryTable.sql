CREATE TABLE [dbo].[Inventory] (
    [Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [InventoryCode] NVARCHAR(50) NOT NULL,
    [Amount] INT NOT NULL,
    CONSTRAINT FK_Inventory_User FOREIGN KEY ([UserId]) REFERENCES [dbo].[User]([Id])
);