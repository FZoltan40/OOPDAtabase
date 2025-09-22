using OOPDatabase.Services;
using System;

namespace OOPDatabase
{
    internal class Program
    {
        static void Main(string[] args)
        {


            try
            {
                string table;
                string db;

                do
                {
                    Console.Write("Kérem az adatbázis amiből a lekérdezést szeretnéd:");
                    db = Console.ReadLine();
                }
                while (db != "library");

                do
                {
                    Console.Write("Válasz táblát:");
                    table = Console.ReadLine();
                }
                while (table != "books" && table != "cars");

                ISqlStatements statements;
                if (table == "books")
                {
                    statements = new TableBooks();
                }
                else
                {
                    statements = new TableCars();
                }

                Console.WriteLine("Válasz lekérdezést:");
                Console.WriteLine("Összes record (0)");
                Console.WriteLine("Egy adott record (1)");
                Console.WriteLine("Új record (2)");
                Console.WriteLine("Töröl record (3)");
                Console.WriteLine("Frissít record (4)");

                int query = int.Parse(Console.ReadLine());

                switch (query)
                {
                    case 0:
                        {
                            foreach (var item in statements.GetAllRecords(table))
                            {
                                var record = item.GetType().GetProperties();
                                Console.WriteLine($"{record[0].Name} = {record[0].GetValue(item)}, {record[1].Name} = {record[1].GetValue(item)}");
                            }
                            break;
                        }
                    case 1:
                        {
                            Console.Write("Kérem a rekord id-t: ");

                            var item = statements.GetById(int.Parse(Console.ReadLine()), table);

                            var record = item.GetType().GetProperties();

                            Console.WriteLine($"{record[1].Name} = {record[1].GetValue(item)}");
                            break;
                        }
                    case 2:
                        {
                            Console.Write("Kérem a mező1-et:");
                            string cim = Console.ReadLine();
                            Console.Write("Kérem a mező2-t:");
                            string szerzo = Console.ReadLine();
                            Console.Write("Kérem a mező3-at:");
                            string datum = Console.ReadLine();

                            var record = new
                            {
                                Column1 = cim,
                                Column2 = szerzo,
                                Column3 = datum

                            };
                            statements.AddNewRecord(record, table);
                            break;
                        }
                    case 3:
                        {
                            Console.Write("Kérem a törlendő rekord id-t:");
                            Console.WriteLine(statements.DeleteRecord(int.Parse(Console.ReadLine()), table));
                            break;
                        }
                    case 4:
                        {
                            Console.Write("Kérem az ID-et:");
                            int id = int.Parse(Console.ReadLine());
                            Console.Write("Kérem a mező1-et:");
                            string cim = Console.ReadLine();
                            Console.Write("Kérem a mező2-t:");
                            string szerzo = Console.ReadLine();
                            Console.Write("Kérem a mező3-at:");
                            string datum = Console.ReadLine();

                            var record = new
                            {
                                Column1 = cim,
                                Column2 = szerzo,
                                Column3 = datum

                            };

                            Console.WriteLine(statements.UpdateRecord(id, record, table));
                            break;
                        }
                    default:
                        Console.WriteLine("Nem megfelelő érték!");
                        break;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }


            /*Feladat1
            foreach (var item in sqlStatements.GetAllRecords())
            {
                var record = item.GetType().GetProperties();
                Console.WriteLine($"{record[0].Name} = {record[0].GetValue(item)}, {record[1].Name} = {record[1].GetValue(item)}");
            }*/

            /*Feladat2
            Console.Write("Kérem a rekord id-t: ");

            var item = sqlStatements.GetById(int.Parse(Console.ReadLine()));

            var record = item.GetType().GetProperties();

            Console.WriteLine($"{record[1].Name} = {record[1].GetValue(item)}");*/

            /*Feladat3
            Console.Write("Kérem a könyv címét:");
            string cim = Console.ReadLine();
            Console.Write("Kérem a könyv szerzőjét:");
            string szerzo = Console.ReadLine();
            Console.Write("Kérem a könyv kiadási dátumát:");
            string datum = Console.ReadLine();

            var record = new
            {
                Title = cim,
                Author = szerzo,
                Release = datum

            };
            sqlStatements.AddNewRecord(record);
             */

            /*Feladat4
            Console.Write("Kérem a törlendő rekord id-t:");
            Console.WriteLine(sqlStatements.DeleteRecord(int.Parse(Console.ReadLine())));*/

            /*Console.Write("Kérem a könyv id-t:");
            int id = int.Parse(Console.ReadLine());
            Console.Write("Kérem a könyv címét:");
            string cim = Console.ReadLine();
            Console.Write("Kérem a könyv szerzőjét:");
            string szerzo = Console.ReadLine();
            Console.Write("Kérem a könyv kiadási dátumát:");
            string datum = Console.ReadLine();

            var record = new
            {
                Title = cim,
                Author = szerzo,
                Release = datum

            };

            Console.WriteLine(sqlStatements.UpdateRecord(id, record));*/

        }
    }
}
