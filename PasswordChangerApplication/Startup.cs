using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PasswordChangerApplication.Startup))]
namespace PasswordChangerApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
