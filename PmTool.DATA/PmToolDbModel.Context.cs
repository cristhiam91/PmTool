﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PmTool.DATA
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ProjectManagementEntities : DbContext
    {
        public ProjectManagementEntities()
            : base("name=ProjectManagementEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ConnectionTypes> ConnectionTypes { get; set; }
        public virtual DbSet<DataCenters> DataCenters { get; set; }
        public virtual DbSet<DcScopes> DcScopes { get; set; }
        public virtual DbSet<FabScopes> FabScopes { get; set; }
        public virtual DbSet<Factories> Factories { get; set; }
        public virtual DbSet<Labs> Labs { get; set; }
        public virtual DbSet<LabScopes> LabScopes { get; set; }
        public virtual DbSet<Offices> Offices { get; set; }
        public virtual DbSet<OfficeScopes> OfficeScopes { get; set; }
        public virtual DbSet<OtherProjects> OtherProjects { get; set; }
        public virtual DbSet<PhaseTypes> PhaseTypes { get; set; }
        public virtual DbSet<PmProjectCost> PmProjectCost { get; set; }
        public virtual DbSet<ProjectNames> ProjectNames { get; set; }
        public virtual DbSet<ProjectTypes> ProjectTypes { get; set; }
        public virtual DbSet<SpeedConnectionTypes> SpeedConnectionTypes { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<UserTypes> UserTypes { get; set; }
    }
}
