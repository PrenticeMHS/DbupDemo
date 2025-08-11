-- Adds a new user to the database

INSERT INTO [dbo].[User] ([Id], [Name], [Email], [CreatedDate], [DeleteDate])
VALUES
    (NEWID(), 'Test User 3', 'testuser3@example.com', GETDATE(), NULL);