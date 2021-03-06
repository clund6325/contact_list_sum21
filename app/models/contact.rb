class Contact < ApplicationRecord
  #Association
  # belongs_to - child model, tell who parent is
  # has_many - parent model, one to many relationship, multiple objects to parent
  # has_one - parent model, one to one relationsip, one parent and one child
  # has_many :through - many to many relationship
  # has_one :through
  # dependent, has many and has one, delete all child elements too
  has_many :notes, dependent: :destroy
  # has_one :note
  has_one :address, dependent: :destroy


  # Validations
  # - make sure it meets some rules before going in the database
  # confirmation -if you have two fields, make sure they match
  # inclusion - makes sure that it is in this given set
  # length - makes sure its a certain length in size
  # numericality - make sure its a type of number integer, float
  # presence - makes sure it's not empty
  # uniqueness - only that specific object is able to pass through record/case sensitive

  # validation opt
  # allow-nil 
  # allow-blank
  # message
  # on

  validates :first_name, :last_name, :age, :phone, :email, presence: true
  validates :email, uniqueness: true
  validates :age, numericality: { only_integer: true }

  #Callback - trigger some logic or code based on an action
  # before_validation
  # after_validation
  # around_validation
  # before_save
  # after_save
  # around_save
  # before_create
  # after_create
  # around_create
  
  # Model methods
  # Fat models skinny controllers- any logic wise would be in the model, 
  # class methods
  
  # instance methods 
end
