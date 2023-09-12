namespace go service

struct Empty {
  1: i32 code,
  2: string message
}

struct User {
  1: i32 user_id,
  2: string username,
  3: string email,
  4: string avatar
}

struct Category {
  1: i32 category_id,
  2: string name,
  3: string creator
}

struct Todo {
  1: i32 todo_id,
  2: string title,
  3: string description,
  4: string type,
  5: string start_time,
  6: string deadline,
  7: string status,
  8: i32 user_id,
  9: string create_at,
  10: string update_at
}

struct Pusher {
  1: i32 pusher_id,
  2: string name,
  3: string config,
  4: string type,
  5: i32 user_id,
  6: bool is_active
}

// Auth APIs

struct LoginReq {
  1: string email,
  2: string password
}

struct LoginResp {
  1: string expire,
  2: string token
}

struct RegisterReq {
  1: string username,
  2: string email,
  3: string password,
  4: string email_code
}

struct RegisterResp {
  1: i32 code,
  2: string message
  3: User data
}

struct SendCodeReq {
  1: string email
}

struct SendCodeResp {
  1: i32 code,
  2: string message
}

// User APIs

struct GetUserReq {
  1: i32 user_id
}

struct GetUserResp {
  1: i32 code,
  2: string message,
  3: User data
}

// Category APIs

struct GetAllCategoriesReq {
}

struct GetAllCategoriesResp {
  1: i32 code,
  2: string message,
  3: list<Category> data
}

struct GetCategoryReq {
  1: i32 category_id
}

struct GetCategoryResp {
  1: i32 code,
  2: string message,
  3: Category data
}

struct CreateCategoryReq {
  1: string name
}

struct CreateCategoryResp {
  1: i32 code,
  2: string message,
  3: Category data
}

struct UpdateCategoryReq {
  1: i32 category_id,
  2: string name
}

struct UpdateCategoryResp {
  1: i32 code,
  2: string message,
  3: Category data
}

struct DeleteCategoryReq {
  1: i32 category_id
}

struct DeleteCategoryResp {
  1: i32 code,
  2: string message
}

// Todo APIs

struct GetAllTodosReq {
}

struct GetAllTodosResp {
  1: i32 code,
  2: string message,
  3: list<Todo> data
}

struct GetTodoReq {
  1: i32 todo_id
}

struct GetTodoResp {
  1: i32 code,
  2: string message,
  3: Todo data
}

struct CreateTodoReq {
  1: string title,
  2: string description,
  3: string type,
  4: string deadline
}

struct CreateTodoResp {
  1: i32 code,
  2: string message,
  3: Todo data
}

struct UpdateTodoReq {
  1: i32 todo_id,
  2: string title,
  3: string description,
  4: string type,
  5: string deadline,
  6: string status
}

struct UpdateTodoResp {
  1: i32 code,
  2: string message,
  3: Todo data
}

struct DeleteTodoReq {
  1: i32 todo_id
}

struct DeleteTodoResp {
  1: i32 code,
  2: string message
}

struct CreateTodosByAudioReq {
  1: binary audio
}

struct CreateTodosByAudioResp {
  1: i32 code,
  2: string message,
  3: list<Todo> data
}

struct CreateTodosByNLReq {
  1: string nl
}

struct CreateTodosByNLResp {
  1: i32 code,
  2: string message,
  3: list<Todo> data
}

// Pusher APIs

struct GetAllPushersReq {
}

struct GetAllPushersResp {
  1: i32 code,
  2: string message,
  3: list<Pusher> data
}

struct GetPusherReq {
  1: i32 pusher_id
}

struct GetPusherResp {
  1: i32 code,
  2: string message,
  3: Pusher data
}

struct CreatePusherReq {
  1: string name,
  2: string config,
  3: string type
}

struct CreatePusherResp {
  1: i32 code,
  2: string message,
  3: Pusher data
}

struct UpdatePusherReq {
  1: i32 pusher_id,
  2: string name,
  3: string config,
  4: string type,
  5: bool is_active
}

struct UpdatePusherResp {
  1: i32 code,
  2: string message,
  3: Pusher data
}

struct DeletePusherReq {
  1: i32 pusher_id
}

struct DeletePusherResp {
  1: i32 code,
  2: string message
}

service UserService {

  LoginResp Login(1: LoginReq req) (api.post="/v1/api/user/login");

  RegisterResp Register(1: RegisterReq req) (api.post="/v1/api/user/register");

  SendCodeResp SendCode(1: SendCodeReq req) (api.post="/v1/api/user/send_code");

  GetUserResp GetUser(1: GetUserReq req) (api.get="/v1/api/user/me");
}

service CategoryService {

  GetAllCategoriesResp GetAllCategories() (api.get="/v1/api/category/get_all_categories");

  GetCategoryResp GetCategory(1: GetCategoryReq req) (api.get="/v1/api/category/:category_id");

  CreateCategoryResp CreateCategory(1: CreateCategoryReq req) (api.post="/v1/api/category");

  UpdateCategoryResp UpdateCategory(1: UpdateCategoryReq req) (api.put="/v1/api/category/:category_id");

  DeleteCategoryResp DeleteCategory(1: DeleteCategoryReq req) (api.delete="/v1/api/category/:category_id");
}

service TodoService {

  GetAllTodosResp GetAllTodos() (api.get="/v1/api/todo/get_all_todos");

  GetTodoResp GetTodo(1: GetTodoReq req) (api.get="/v1/api/todo/:todo_id");

  CreateTodoResp CreateTodo(1: CreateTodoReq req) (api.post="/v1/api/todo");

  UpdateTodoResp UpdateTodo(1: UpdateTodoReq req) (api.put="/v1/api/todo/:todo_id");

  DeleteTodoResp DeleteTodo(1: DeleteTodoReq req) (api.delete="/v1/api/todo/:todo_id");

  CreateTodosByAudioResp CreateTodosByAudio(1: CreateTodosByAudioReq req) (api.get="/v1/api/todo/create_by_audio");

  CreateTodosByNLResp CreateTodosByNL(1: CreateTodosByNLReq req) (api.get="/v1/api/todo/create_by_nl");
}

service PusherService {

  GetAllPushersResp GetAllPushers() (api.get="/v1/api/pusher/get_all_pushers");

  GetPusherResp GetPusher(1: GetPusherReq req) (api.get="/v1/api/pusher/:pusher_id");

  CreatePusherResp CreatePusher(1: CreatePusherReq req) (api.post="/v1/api/pusher");

  UpdatePusherResp UpdatePusher(1: UpdatePusherReq req) (api.put="/v1/api/pusher/:pusher_id");

  DeletePusherResp DeletePusher(1: DeletePusherReq req) (api.delete="/v1/api/pusher/:pusher_id");
}
