
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :trackable, :validatable
  before_save :get_ldap_attrs
def get_ldap_attrs
  self.firstname = Devise::LDAP::Adapter.get_ldap_param(self.email, 'givenName')
  self.lastname = Devise::LDAP::Adapter.get_ldap_param(self.email, 'sn') 
  self.login = Devise::LDAP::Adapter.get_ldap_param(self.email, 'sAMAccountName') 
  self.email = Devise::LDAP::Adapter.get_ldap_param(self.email,'mail').first
  self.studentid = Devise::LDAP::Adapter.get_ldap_param(self.email, 'title')
end

end
