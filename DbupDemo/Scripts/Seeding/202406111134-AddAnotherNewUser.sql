-- Adds another new user to the database

INSERT INTO [dbo].[User] ([Id], [Name], [Email], [CreatedDate], [DeleteDate])
VALUES
    (NEWID(), 'Test User 4', 'testuser4@example.com', GETDATE(), NULL);