using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MTWIN.Startup))]
namespace MTWIN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
