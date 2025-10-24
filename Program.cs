using Microsoft.Data.Sqlite;

string connectionString = "Data Source=Tienda.db;"; // usa tu propia base

// Crear conexión a la base de datos
using (SqliteConnection connection = new SqliteConnection(connectionString))
{
    connection.Open();

    // Solo leer datos existentes — no crear tablas ni insertar nada
    string selectQuery = "SELECT idProducto, Descripcion, Precio FROM Productos";

    using (SqliteCommand selectCmd = new SqliteCommand(selectQuery, connection))
    using (SqliteDataReader reader = selectCmd.ExecuteReader())
    {
        Console.WriteLine("Datos en la tabla 'Productos':");
        Console.WriteLine("----------------------------------");

        while (reader.Read())
        {
            int id = reader.GetInt32(0);
            string descripcion = reader.GetString(1);
            double precio = reader.GetDouble(2);

            Console.WriteLine($"ID: {id} | Descripción: {descripcion} | Precio: ${precio}");
        }
    }

    connection.Close();
}
