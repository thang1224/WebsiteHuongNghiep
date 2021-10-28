﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebsiteHuongNghiep.Controllers
{
    public class BaseController : Controller
    {
        public override void OnActionExecuted(ActionExecutedContext context)
        {
            var session = context.HttpContext.Session.GetString("UserName");
            if(session == null)
            {
                context.Result = new RedirectToActionResult("Index", "User", null);
            }
            base.OnActionExecuted(context);
        }
    }
}