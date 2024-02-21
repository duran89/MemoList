//
//  HomeViewController.swift
//  MemoList
//
//  Created by 권정근 on 2/19/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    var todoListManager = TodoListManager()
    
    // MARK: 테이블 뷰 설정하기
    private var timelineTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TodoListTableViewCell.self, forCellReuseIdentifier: TodoListTableViewCell.identifier)
        // tableView.backgroundColor = .systemYellow
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationTitle()
        
        view.addSubview(timelineTableView)
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
        
        todoListManager.makeTodoListDatas()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timelineTableView.frame = view.frame
    }
    
    /*
     오늘 완전 삽질했는데...
     이거 보니까 애초에 내가 SceneDelegate 파일내에도 UINavigationController로 하고 그리고 mainTabBar 안에다가도
     navigationController로 하니까 타이틀이 잘 안먹힌거다... 주의 하자
     */
    
    func setupNavigationTitle() {
        self.navigationItem.title = "우리가 해온 것...😀"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemIndigo
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        /*
         그냥 navigationBar.barTintColor로 색상 설정하면
         화면으로 내려야지 색상이 변하다가
         다시 원래 자리로 그러니까 화면이 처음 나왔을 때 높은 위치로 돌아오면
         색상이 사라진다. 그레서 별도로 appearance 변수를 만들어서 background로 접근한다.
         */
        
        
        // self.navigationController?.navigationBar.barTintColor = .systemRed
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListManager.getTodoList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TodoListTableViewCell.identifier, for: indexPath) as? TodoListTableViewCell else { return TodoListTableViewCell() }
        
        cell.todo = todoListManager[indexPath.row]
        
        // didSet 속성으로 했을 떄 시간은 어떻게 되는지 확인해볼 필요가 있음
        // date 타입의 날짜를 포맷
        // let formatter = DateFormatter()
        // formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 작성됨"
        // cell.dateLabel.text = formatter.string(from: todoListManager[indexPath.row].regdate!)
        
        // 셀 선택했을 때 회색 안보이게
        cell.selectionStyle = .none
        
        return cell
    }
}


extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
