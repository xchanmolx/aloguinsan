using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using DataAccessLibrary.Models;
using Microsoft.Extensions.Configuration;

namespace DataAccessLibrary
{
    public class PeopleData : IPeopleData
    {
        private readonly IConfiguration _config;

        public string ConnectionStringName { get; set; } = "Default";

        public PeopleData(IConfiguration config)
        {
            _config = config;
        }

        public async Task<bool> DeletePerson(int id)
        {
            string connectionString = _config.GetConnectionString(ConnectionStringName);

            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                const string query = @"DELETE FROM dbo.Person WHERE PersonId = @PersonId";

                await connection.ExecuteAsync(query, new { id }, commandType: CommandType.Text);
            }

            return true;
        }

        public async Task<bool> InsertPerson(PersonModel person)
        {
            string connectionString = _config.GetConnectionString(ConnectionStringName);

            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                const string query = @"INSERT INTO dbo.Person (FirstName, LastName) VALUES (@FirstName, @LastName)";

                await connection.ExecuteAsync(query, new { person.FirstName, person.LastName }, commandType: CommandType.Text);
            }

            return true;
        }

        public async Task<List<PersonModel>> GetPeople()
        {
            string connectionString = _config.GetConnectionString(ConnectionStringName);

            IEnumerable<PersonModel> persons;

            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                const string query = @"SELECT * FROM dbo.Person";

                persons = await connection.QueryAsync<PersonModel>(query);
            }

            return persons.ToList();
        }
    }
}
