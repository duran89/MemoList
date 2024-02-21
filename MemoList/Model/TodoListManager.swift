//
//  TodoListManager.swift
//  MemoList
//
//  Created by 권정근 on 2/21/24.
//

import UIKit

final class TodoListManager {
    
    
    private var todoList: [Todo] = []
    
    func makeTodoListDatas() {
        todoList = [
            Todo(title: "이거는 처음 작성해보는 투두리스트입니다.", contentImage: UIImage(named: "스파이더맨"), todoContents: "처음 작성해보는 글입니다. 이 앱은 처음으로 제가 작성해보는 앱입니다.", regdate: Date())
        ]
    }
    
    func getTodoList() -> [Todo] {
        return todoList
    }
    
    func makeNewTodoItemData(_ todoItem: Todo) {
        todoList.append(todoItem)
    }
    
    func updateTodoItemInfo(index: Int, _ todoItem: Todo) {
        todoList[index] = todoItem
    }
    
    func removeTodoItemInfo(index: Int) {
        todoList.remove(at: index)
    }
    
    
    subscript(index: Int) -> Todo {
        get { return todoList[index]}
        set { todoList[index] = newValue}
    }
}
