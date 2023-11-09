
ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  List<int> list = [];
  ListNode? nodes;
  if (list1 != null) {
    while (true) {
      if (list1?.val == null) break;
      list.add(list1!.val);
      list1 = list1.next;
    }
  }
  if (list2 != null) {
    while (true) {
      if (list2?.val == null) break;
      list.add(list2!.val);
      list2 = list2.next;
    }
  }

  list.sort();
  if (list.length > 0) {
    nodes = getNextNode(0, list);
  } else {
    nodes = null;
  }
  return nodes;
}

ListNode? getNextNode(int index, List<int> list) {
  var size = list.length - 1;
  if (index >= size) {
    return ListNode(list[index], null);
  } else {
    return ListNode(list[index], getNextNode(index + 1, list));
  }
}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}