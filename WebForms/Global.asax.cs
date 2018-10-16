using System;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

namespace WebForms
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Application_Stop(object sender, EventArgs e)
        {
        }

        void Application_Error(object sender, EventArgs e)
        {
            Exception exc = Server.GetLastError();

            Console.Error.WriteLine($"Application_Error: {exc}");

            Server.ClearError();
        }
    }
}