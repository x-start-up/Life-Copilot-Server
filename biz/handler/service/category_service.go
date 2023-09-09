// Code generated by hertz generator.

package service

import (
	"context"

	"github.com/cloudwego/hertz/pkg/app"
	service "github.com/x-start-up/Life-Copilot-Server/biz/model/service"
)

// GetAllCategories .
// @router /v1/api/category/get_all_categories [GET]
func GetAllCategories(ctx context.Context, c *app.RequestContext) {
	var err error

	resp := new(service.GetAllCategoriesResp)

	c.JSON(200, resp)
}

// GetCategory .
// @router /v1/api/category/:category_id [GET]
func GetCategory(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.GetCategoryReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.GetCategoryResp)

	c.JSON(200, resp)
}

// CreateCategory .
// @router /v1/api/category [POST]
func CreateCategory(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.CreateCategoryReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.CreateCategoryResp)

	c.JSON(200, resp)
}

// UpdateCategory .
// @router /v1/api/category/:category_id [PUT]
func UpdateCategory(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.UpdateCategoryReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.UpdateCategoryResp)

	c.JSON(200, resp)
}

// DeleteCategory .
// @router /v1/api/category/:category_id [DELETE]
func DeleteCategory(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.DeleteCategoryReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.DeleteCategoryResp)

	c.JSON(200, resp)
}
