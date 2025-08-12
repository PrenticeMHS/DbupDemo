-- Adds a new user to the database

INSERT INTO [dbo].[User] ([Id], [Name], [Email], [CreatedDate], [DeleteDate])
VALUES
    (NEWID(), 'Test User 5', 'testuser5@example.com', GETDATE(), NULL);