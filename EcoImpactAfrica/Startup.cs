using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EcoImpactAfrica.Startup))]
namespace EcoImpactAfrica
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
