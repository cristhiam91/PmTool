using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PmTool.DAL.Repository;
using System.Data.Entity;
using PmTool.DAL;
using PmTool.DATA;

namespace PmTool.BL.Services
{
    public class UserTypeService
    {
        private readonly DbContext dbContext;
        private UnitOfWork unitOfWork;
        public UserTypeService()
        {
            this.dbContext = new ProjectManagementEntities();
            this.unitOfWork = new UnitOfWork(dbContext);
        }
        public List<UserTypes> ListPhaseTypeScopes()
        {
            try
            {
                List<UserTypes> theUserTypes = unitOfWork.Repository<UserTypes>().GetAll().ToList();
                return theUserTypes;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
