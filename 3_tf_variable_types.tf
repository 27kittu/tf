#-----Primitive types-----
variable "string1" {
  type    = string
  default = "aws"
}

variable "number1" {
  type    = number
  default = 1
}

variable "bool1" {
  type    = bool
  default = true
}
#------Complex types--------

# collection types
variable "list1" {
  type    = list(string)
  default = [3, 5, 67, 7]
}

variable "map1" {
  type    = map(string)
  default = { name : "tiller", type : "object" }
}

variable "set1" {
  type    = set(string)
  default = ["hilton", 1, "cord", "apple", "banana", "apple"]
}

#--------structural Types----
variable "object1" {
  type = object({
    name         = string
    number_phone = number
  area = string })
  default = { "name" : "kittu", "number_phone" : 3443, "area" : "dillon" }
}

variable "tuple1" {
  type    = tuple([number, number, number, string, string])
  default = [3, 4, 5, "km", "kjr"]
}

variable "anytype" {
  type    = any
  default = { name : "hello", number_sl : 3434 }
}

variable "dynamic" {}
