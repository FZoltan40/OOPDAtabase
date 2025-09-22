using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace OOPDatabase.Services
{
    internal class TableBooks : ISqlStatements
    {
        Connect conn = new Connect();
        public object AddNewRecord(object newRecord, string tableName)
        {
            conn.Connection.Open();

            string sql = $"INSERT INTO {tableName} (`title`, `author`, `releaseDate`) VALUES (@title,@author,@release)";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            var record = newRecord.GetType().GetProperties();

            cmd.Parameters.AddWithValue("@title", record[0].GetValue(newRecord));
            cmd.Parameters.AddWithValue("@author", record[1].GetValue(newRecord));
            cmd.Parameters.AddWithValue("@release", record[2].GetValue(newRecord));

            cmd.ExecuteNonQuery();

            conn.Connection.Close();

            return record;

        }
        public object DeleteRecord(int id, string table)
        {
            conn.Connection.Open();

            string sql = $"DELETE FROM {table} WHERE id = @id";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            conn.Connection.Close();

            return new { Message = "Sikeres törlés" };
        }
        public List<object> GetAllRecords(string tableName)
        {
            List<object> result = new List<object>();

            conn.Connection.Open();

            string sql = $"SELECT * FROM {tableName}";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            //cmd.Parameters.AddWithValue("@tableName", tableName);

            MySqlDataReader dr = cmd.ExecuteReader();

            //dr.Read();

            while (dr.Read())
            {
                var record = new
                {
                    Column1 = dr.GetBodyDefinition(dr.GetName(0)),
                    Column2 = dr.GetBodyDefinition(dr.GetName(1)),
                    Column3 = dr.GetBodyDefinition(dr.GetName(2)),
                    Column4 = dr.GetBodyDefinition(dr.GetName(3)),
                };

                result.Add(record);
            }

            conn.Connection.Close();

            return result;
        }

        public object GetById(int id, string table)
        {
            conn.Connection.Open();

            string sql = $"SELECT * FROM {table} WHERE id = @id ";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.Parameters.AddWithValue("@id", id);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            var record = new
            {
                Column1 = dr.GetBodyDefinition(dr.GetName(0)),
                Column2 = dr.GetBodyDefinition(dr.GetName(1)),
                Column3 = dr.GetBodyDefinition(dr.GetName(2)),
                Column4 = dr.GetBodyDefinition(dr.GetName(3)),
            };

            conn.Connection.Close();

            return record;
        }

        public object UpdateRecord(int id, object updateBook, string table)
        {
            conn.Connection.Open();

            string sql = $"UPDATE {table} SET `title`=@title,`author`=@author,`releaseDate`=@release WHERE id = @id";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            var record = updateBook.GetType().GetProperties();
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@title", record[0].GetValue(updateBook));
            cmd.Parameters.AddWithValue("@author", record[1].GetValue(updateBook));
            cmd.Parameters.AddWithValue("@release", record[2].GetValue(updateBook));

            cmd.ExecuteNonQuery();

            conn.Connection.Close();

            return new { Message = "Sikeres frissítés." };
        }
    }
}
