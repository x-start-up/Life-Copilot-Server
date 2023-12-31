// Code generated by hertz generator.

package service

import (
	"context"

	"github.com/cloudwego/hertz/pkg/app"
	service "github.com/x-start-up/Life-Copilot-Server/biz/model/service"
)

// GetAllTodos .
// @router /v1/api/todo/get_all_todos [GET]
func GetAllTodos(ctx context.Context, c *app.RequestContext) {
	var err error

	resp := new(service.GetAllTodosResp)

	c.JSON(200, resp)
}

// GetTodo .
// @router /v1/api/todo/:todo_id [GET]
func GetTodo(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.GetTodoReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.GetTodoResp)

	c.JSON(200, resp)
}

// CreateTodo .
// @router /v1/api/todo [POST]
func CreateTodo(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.CreateTodoReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.CreateTodoResp)

	c.JSON(200, resp)
}

// UpdateTodo .
// @router /v1/api/todo/:todo_id [PUT]
func UpdateTodo(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.UpdateTodoReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.UpdateTodoResp)

	c.JSON(200, resp)
}

// DeleteTodo .
// @router /v1/api/todo/:todo_id [DELETE]
func DeleteTodo(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.DeleteTodoReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.DeleteTodoResp)

	c.JSON(200, resp)
}

// CreateTodosByAudio .
// @router /v1/api/todo/create_by_audio [GET]
func CreateTodosByAudio(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.CreateTodosByAudioReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.CreateTodosByAudioResp)

	c.JSON(200, resp)
}

// CreateTodosByNL .
// @router /v1/api/todo/create_by_nl [GET]
func CreateTodosByNL(ctx context.Context, c *app.RequestContext) {
	var err error
	var req service.CreateTodosByNLReq
	err = c.BindAndValidate(&req)
	if err != nil {
		c.String(400, err.Error())
		return
	}

	resp := new(service.CreateTodosByNLResp)

	c.JSON(200, resp)
}
