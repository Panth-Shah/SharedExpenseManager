//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SharedExpenseApplicationDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class ApplicationUserInformation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ApplicationUserInformation()
        {
            this.UserGroups = new HashSet<UserGroup>();
        }
    
        public int UserId { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserEmailId { get; set; }
        public string UserPhoneNumber { get; set; }
        public System.DateTime CreateDate { get; set; }
        public System.DateTime LastUpdate { get; set; }
        public int LogInId { get; set; }
    
        public virtual UserLogIn UserLogIn { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserGroup> UserGroups { get; set; }
    }
}
