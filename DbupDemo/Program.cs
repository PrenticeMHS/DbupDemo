using DbUp;
using System.Reflection;

namespace DbupDemo
{
    public class Program
    {
        public static int Main(string[] args)
        {
            return updater();
        }
        public static int updater()
        {
            var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
#if DEBUG
            EnsureDatabase.For.SqlDatabase(connectionString);
#endif
            var upgrader =
                DeployChanges.To
                    .SqlDatabase(connectionString)
                    .WithScriptsFromFileSystem("C:/Users/prentice.lauzon/source/repos/DbupDemo/DbupDemo/Scripts/Schema")
                    .WithScriptsFromFileSystem("C:/Users/prentice.lauzon/source/repos/DbupDemo/DbupDemo/Scripts/Migrations")
                    .WithScriptsFromFileSystem("C:/Users/prentice.lauzon/source/repos/DbupDemo/DbupDemo/Scripts/Seeding")
                    .WithTransactionPerScript()
                    .WithExecutionTimeout(TimeSpan.FromMinutes(10))
                    .LogToConsole()
                    .Build();


            return OutputResults(upgrader);
        }

        public static int OutputResults(DbUp.Engine.UpgradeEngine upgrader)
        {
            var result = upgrader.PerformUpgrade();

            if (!result.Successful)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(result.Error);
                Console.ResetColor();
#if DEBUG
                Console.ReadLine();
#endif
                return -1;
            }

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine("Success!");
            Console.ResetColor();
            return 0;
        }
    }
}