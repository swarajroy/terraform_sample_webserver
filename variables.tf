variable "server_port" {
    description = "the port on which the web server will run"
    default = 8080
    type = number

    validation {
      condition = var.server_port > 0 && var.server_port < 65535
      error_message = "the server_port value must be between 1 and 65536"
    }

    sensitive = true
}