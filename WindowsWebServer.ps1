configuration IIS
{
    node ("localhost")
    {
        WindowsFeature WebServer
        {
           Ensure = "Present"
           Name   = "web-server"
        }      
    }
}