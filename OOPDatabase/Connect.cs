using MySql.Data.MySqlClient;
using System;

namespace OOPDatabase
{
    public class Connect
    {
        public MySqlConnection Connection;

        private string _host;
        private string _database;
        private string _user;
        private string _password;

        private string ConnectionString;

        public Connect(string database, string user, string password)
        {
            _host = "localhost";
            _database = database;
            _user = user;
            _password = password;

            ConnectionString = $"SERVER={_host};DATABASE={_database};UID={_user};PASSWORD={_password};SslMode=None";

            Connection = new MySqlConnection(ConnectionString);

            try
            {
                Connection.Open();
                System.Console.WriteLine("Sikeres csatlakozás.");
                Connection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

    }
}
