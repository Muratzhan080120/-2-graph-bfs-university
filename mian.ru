from collections import deque

def bfs(graph, start_node):
    visited = set()
    queue = deque([start_node])
    visited.add(start_node)
    traversal_order = []

    while queue:
        current = queue.popleft()
        traversal_order.append(current)
        
        for neighbor in graph[current]:
            if neighbor not in visited:
                visited.add(neighbor)
                queue.append(neighbor)
                
    return traversal_order

# Тестовые данные
graph = {
    'A': ['B', 'C'],
    'B': ['A', 'D', 'E'],
    'C': ['A', 'F'],
    'D': ['B'],
    'E': ['B', 'F'],
    'F': ['C', 'E']
}

print("Результат BFS:", bfs(graph, 'A'))

#### 4. Ответы на контрольные вопросы
1.  **Как работает BFS?**  
    Алгоритм начинает с начального узла и посещает всех его соседей. Затем он переходит к соседям этих соседей, двигаясь "слоями" вширь.
2.  **Чем BFS отличается от DFS?**  
    BFS исследует ширину (используя очередь), а DFS — глубину (используя стек или рекурсию). BFS находит кратчайший путь в невзвешенном графе.
3.  **Почему используется очередь?**  
    Очередь работает по принципу FIFO (первым пришел — первым ушел), что позволяет обрабатывать узлы именно в том порядке, в котором они были обнаружены на соответствующих уровнях.