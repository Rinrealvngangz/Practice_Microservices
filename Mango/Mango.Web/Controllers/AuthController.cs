using Microsoft.AspNetCore.Mvc;

namespace Mango.Web.Controllers;

public class AuthController : Controller
{
    // GET
    public IActionResult Login()
    {
        return View();
    }
}