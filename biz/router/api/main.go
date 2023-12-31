// Code generated by hertz generator. DO NOT EDIT.

package Api

import (
	"github.com/cloudwego/hertz/pkg/app/server"

	api "github.com/x-start-up/Life-Copilot-Server/biz/handler/api"
)

/*
 This file will register all the routes of the services in the master idl.
 And it will update automatically when you use the "update" command for the idl.
 So don't modify the contents of the file, or your code will be deleted when it is updated.
*/

// Register register routes based on the IDL 'api.${HTTP Method}' annotation.
func Register(r *server.Hertz) {

	root := r.Group("/", rootMw()...)
	{
		_v1 := root.Group("/v1", _v1Mw()...)
		{
			_api := _v1.Group("/api", _apiMw()...)
			_api.POST("/pusher", append(_pusherMw(), api.CreatePusher)...)
			_pusher := _api.Group("/pusher", _pusherMw()...)
			_pusher.PUT("/:pusher_id", append(_updatepusherMw(), api.UpdatePusher)...)
			_pusher.DELETE("/:pusher_id", append(_deletepusherMw(), api.DeletePusher)...)
			{
				_category := _api.Group("/category", _categoryMw()...)
				_category.GET("/:category_id", append(_getcategoryMw(), api.GetCategory)...)
				_category.GET("/get_all_categories", append(_get_llcategoriesMw(), api.GetAllCategories)...)
			}
			_api.POST("/category", append(_category0Mw(), api.CreateCategory)...)
			_category0 := _api.Group("/category", _category0Mw()...)
			_category0.PUT("/:category_id", append(_updatecategoryMw(), api.UpdateCategory)...)
			_category0.DELETE("/:category_id", append(_deletecategoryMw(), api.DeleteCategory)...)
			{
				_pusher0 := _api.Group("/pusher", _pusher0Mw()...)
				_pusher0.GET("/:pusher_id", append(_getpusherMw(), api.GetPusher)...)
				_pusher0.GET("/get_all_pushers", append(_get_llpushersMw(), api.GetAllPushers)...)
			}
			_api.POST("/todo", append(_todoMw(), api.CreateTodo)...)
			_todo := _api.Group("/todo", _todoMw()...)
			_todo.PUT("/:todo_id", append(_updatetodoMw(), api.UpdateTodo)...)
			_todo.DELETE("/:todo_id", append(_deletetodoMw(), api.DeleteTodo)...)
			_todo.GET("/create_by_audio", append(_createtodosby_udioMw(), api.CreateTodosByAudio)...)
			_todo.GET("/create_by_nl", append(_createtodosbynlMw(), api.CreateTodosByNL)...)
			{
				_todo0 := _api.Group("/todo", _todo0Mw()...)
				_todo0.GET("/:todo_id", append(_gettodoMw(), api.GetTodo)...)
				_todo0.GET("/get_all_todos", append(_get_lltodosMw(), api.GetAllTodos)...)
			}
			{
				_user := _api.Group("/user", _userMw()...)
				_user.POST("/login", append(_loginMw(), api.Login)...)
				_user.GET("/me", append(_getuserMw(), api.GetUser)...)
				_user.POST("/register", append(_registerMw(), api.Register)...)
				_user.POST("/send_code", append(_sendcodeMw(), api.SendCode)...)
			}
		}
	}
}
