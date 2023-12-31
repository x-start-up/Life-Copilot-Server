// Code generated by hertz generator.

package service

import (
	"context"

	"github.com/cloudwego/hertz/pkg/app"
	service "github.com/x-start-up/Life-Copilot-Server/biz/model/service"
)

// Login .
// @router /v1/api/user/login [POST]
func Login(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.LoginReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.LoginResp)

	c.JSON(200, resp)
}

// Register .
// @router /v1/api/user/register [POST]
func Register(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.RegisterReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.RegisterResp)

	c.JSON(200, resp)
}

// SendCode .
// @router /v1/api/user/send_code [POST]
func SendCode(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.SendCodeReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.SendCodeResp)

	c.JSON(200, resp)
}

// GetUser .
// @router /v1/api/user/me [GET]
func GetUser(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.GetUserReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.GetUserResp)

	c.JSON(200, resp)
}
