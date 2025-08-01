INSERT INTO [dbo].[User] ([Id], [Name], [Email], [CreatedDate], [DeleteDate])
VALUES
    (NEWID(), 'Test User 1', 'testuser1@example.com', GETDATE(), NULL), -- Active user
    (NEWID(), 'Test User 2', 'testuser2@example.com', GETDATE(), GETDATE()); -- Deleted user