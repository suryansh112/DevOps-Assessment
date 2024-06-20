terraform{
backend "s3"{
    bucket = "suryanshtestbucket"
    key = "/backend.tf"
    region = "ap-south-1"
    

}
}
