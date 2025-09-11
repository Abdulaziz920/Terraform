resource "local_file" "my_pet" {
filename = "animals.txt"
content = "Heelow World"
}
resource "random_pet" "My-pet" {
  prefix    = "mr"
  separator = "."
  length    = "1"
}
