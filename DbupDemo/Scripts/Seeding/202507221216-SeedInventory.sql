INSERT INTO [dbo].[Inventory] ([Id], [UserId], [InventoryCode], [Amount])
SELECT NEWID(), u.[Id], N'INV-001', 10 FROM [dbo].[User] u;
INSERT INTO [dbo].[Inventory] ([Id], [UserId], [InventoryCode], [Amount])
SELECT NEWID(), u.[Id], N'INV-002', 20 FROM [dbo].[User] u;
INSERT INTO [dbo].[Inventory] ([Id], [UserId], [InventoryCode], [Amount])
SELECT NEWID(), u.[Id], N'INV-003', 30 FROM [dbo].[User] u;