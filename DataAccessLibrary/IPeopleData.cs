using System.Collections.Generic;
using System.Threading.Tasks;
using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IPeopleData
    {
        Task<List<PersonModel>> GetPeople();
        Task<bool> InsertPerson(PersonModel person);
        Task<bool> DeletePerson(int id);
    }
}