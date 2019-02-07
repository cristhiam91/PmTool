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
    public class UserService
    {
        private readonly DbContext dbContext;
        private UnitOfWork unitOfWork;

        public UserService()
        {
            this.dbContext = new ProjectManagementEntities();
            this.unitOfWork = new UnitOfWork(dbContext);
        }
        public Users GetUserBydId(int userId)
        {
            try
            {
                return unitOfWork.Repository<Users>().GetById(userId);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void AddUser(Users user)
        {
            try
            {
                unitOfWork.Repository<Users>().Add(user);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void UpdateUser(Users user)
        {
            try
            {
                unitOfWork.Repository<Users>().Update(user);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void DisableUser(int userId)
        {
            try
            {
                Users theUserToSearch = unitOfWork.Repository<Users>().GetById(userId);
                unitOfWork.Repository<Users>().Update(theUserToSearch);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void DeleteUser(Users user)
        {
            try
            {
                unitOfWork.Repository<Users>().Delete(user);

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<Users> ListUsers()
        {
            try
            {
                List<Users> theUserList = unitOfWork.Repository<Users>().GetAll().ToList();
                return theUserList;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        } 
        public bool UserLogin(int userId, string userPassword)
        {
            Users userToSearch = unitOfWork.Repository<Users>().FindSingle(x=>x.User_id== userId && x.User_password==userPassword);
            if (userToSearch != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }



    }
}
