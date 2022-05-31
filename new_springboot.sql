/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : new_springboot

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 31/05/2022 23:55:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `user` varchar(50) DEFAULT NULL COMMENT '发布人',
  `time` varchar(50) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` (`id`, `name`, `content`, `user`, `time`) VALUES (2, 'f\'da', '打', 'admin', '2022-04-05 22:53:59');
INSERT INTO `article` (`id`, `name`, `content`, `user`, `time`) VALUES (3, '测试文章', '# 测试文章\n## test2\n![头像3.jpg](http://localhost:9091/file/00b415f336824276bacec0ae9f2e1a25.jpg)', 'admin', '2022-04-05 22:55:51');
INSERT INTO `article` (`id`, `name`, `content`, `user`, `time`) VALUES (5, '呃', '234', 'admin', '2022-04-05 22:57:22');
INSERT INTO `article` (`id`, `name`, `content`, `user`, `time`) VALUES (6, '大批量测试', 'LeetCode\n\n***\n\n\n[TOC]\n\n***\n\n# 两数之和\n\n<details>\n<summary>题目描述</summary>\n给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。\n你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。\n你可以按任意顺序返回答案。\n</details>\n\n\n## 暴力法\n\n```java\nclass Solution {\n    public int[] twoSum(int[] nums, int target) {\n        for (int i = 0; i < nums.length; i++) {\n            for (int j = i + 1; j < nums.length; j++) {\n                if (nums[j] == target - nums[i]) {\n                    return new int[] { i, j };\n                }\n            }\n        }\n        throw new IllegalArgumentException(\"No two sum solution\");\n    }\n}\n    public static void main(String[] args) {\n        twoSum ts = new twoSum();\n        int[] nums = {2, 3, 11, 15};\n        int target = 9;\n        System.out.print(Arrays.toString(ts.twoSum(nums, target)));\n\n\n    }\n```\n\n## HashMap\n\n```java\nclass Solution {\n    public int[] twoSum(int[] nums, int target) {\n        Map<Integer, Integer> map = new HashMap<>(); // 新建HashMap\n        for (int i = 0; i < nums.length; i++) { // 遍历数组\n            int complement = target - nums[i]; // 设置比较器\n            if (map.containsKey(complement)) { // 如果map存在complement这个key，也就是两数相减为target，则输出当前map表中的complement的key和当前的i值\n                return new int[] { map.get(complement), i };\n            }\n            // put() 方法将指定的键/值对插入到 HashMap 中。\n            map.put(nums[i], i);\n        }\n        throw new IllegalArgumentException(\"No two sum solution\");\n    }\n}\n```\n\n## 需要注意的是：\n\n如果在IDE中输出，需要用到以下方式\n\n```java\npublic class twoSum {\n    public int[] twoSum(int[] nums, int target) {\n        for(int i  = 0; i < nums.length; i++){\n            for(int j = i + 1; j < nums.length; j++){\n                if(nums[j] == target - nums[i]){\n                    return new int[]{i, j};\n                }\n            }\n        }\n        throw new IllegalArgumentException(\"没有符合条件的数组\");\n\n    }\n\n    public static void main(String[] args) {\n        twoSum ts = new twoSum();\n        int[] nums = {2,7,11,15};\n        int target = 9;\n      	// 用Arrays.toString 来确保输出正常\n        System.out.print(Arrays.toString(ts.twoSum(nums, target)));\n    }\n}\n```\n\n***\n\n# 整数反转\n\n<details>\n<summary>题目描述</summary>\n给你一个 32 位的有符号整数 x ，返回将 x 中的数字部分反转后的结果。\n如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。\n假设环境不允许存储 64 位整数（有符号或无符号）。\n</details>\n\n## 代码部分\n\n```java\nclass Solution {\n    public int reverse(int x) {\n        int result = 0;\n        while(x != 0){\n            int tmp = result;\n            result = result * 10 + x % 10;\n            x = x / 10;\n            if(result /10 != tmp){\n                return 0;\n            }\n        }\n        return result;\n    }\n\n    public static void main(String[] args) {\n        reverse_int reverse_int = new reverse_int();\n        reverse_int.reverse(132);\n    }\n}\n```\n\n## 需要注意的是：\n\n#### 逆序输出：\n\n```java\nresult = result * 10 + x % 10;\nx = x / 10;\n```\n\n***\n\n# 罗马数字转整数\n\n<details>\n<summary>题目描述</summary>\n  罗马数字包含以下七种字符: I， V， X， L，C，D 和 M。\n      字符          数值\n      I             1\n      V             5\n      X             10\n      L             50\n      C             100\n      D             500\n      M             1000\n  例如， 罗马数字 2 写做 II ，即为两个并列的 1。12 写做 XII ，即为 X + II 。 27 写做  XXVII, 即为 XX + V + II 。\n  通常情况下，罗马数字中小的数字在大的数字的右边。但也存在特例，例如 4 不写做 IIII，而是 IV。数字 1 在数字 5 的左边，所表示的数等于大数 5 减小数 1 得到的数值 4 。同样地，数字 9 表示为 IX。这个特殊的规则只适用于以下六种情况：\n  I 可以放在 V (5) 和 X (10) 的左边，来表示 4 和 9。\n  X 可以放在 L (50) 和 C (100) 的左边，来表示 40 和 90。 \n  C 可以放在 D (500) 和 M (1000) 的左边，来表示 400 和 900。\n  给定一个罗马数字，将其转换成整数。输入确保在 1 到 3999 的范围内。\n</details>\n\n## 代码部分\n\n```Java\npublic int romanToInt(String s){\n        int number = 0;\n        for (int i = 0;i < s.length();i++){\n            switch (s.charAt(i)){\n                case \'I\':\n                    number += 1;\n                    break;\n                case \'V\':\n                    number += 5;\n                    break;\n                case \'X\':\n                    number += 10;\n                    break;\n                case \'L\':\n                    number += 50;\n                    break;\n                case \'C\':\n                    number += 100;\n                    break;\n                case \'D\':\n                    number += 500;\n                    break;\n                case \'M\':\n                    number += 1000;\n                    break;\n                default:\n                    System.out.println(\"default\");\n                    break;\n            }\n            if(i != 0) {\n                // 相减判断 charAt 方法用于返回指定索引处的字符\n                if ((s.charAt(i) == \'V\' || s.charAt(i) == \'X\') && (s.charAt(i - 1) == \'I\')) {\n                  // 检测V（5）和X（10）前的字符是不是I eg: IX = 9，原本IX = 1+10 = 11，-2，等于9，下同\n                    number = number - 1 * 2;\n                }\n                if ((s.charAt(i) == \'L\' || s.charAt(i) == \'C\') && (s.charAt(i - 1) == \'X\')) {\n                  // 检测L和C前是不是X\n                    number = number - 10 * 2;\n                }\n                if ((s.charAt(i) == \'D\' || s.charAt(i) == \'M\') && (s.charAt(i - 1) == \'C\')) {\n                    number = number - 100 * 2;\n                }\n            }\n        }\n        return number;\n```\n\n***\n\n# 最长公共前缀\n\n<details>\n<summary>题目描述</summary>\n  编写一个函数来查找字符串数组中的最长公共前缀。\n  如果不存在公共前缀，返回空字符串 \"\"。\n  示例 1：\n  输入：strs = [\"flower\",\"flow\",\"flight\"]\n  输出：\"fl\"\n</details>\n\n## 代码部分\n\n```Java\n    public String longestCommonPrefix(String[] strs) {\n        if(strs.length == 0) {\n            return \"\";\n        }\n        String s = strs[0];\n        for (String string : strs) { //foreach语句 代表string在strs遍历循环\n            while (!string.startsWith(s)){ //startsWith语句用于检测字符串是否以指定的前缀开始\n                if (s.length() == 0){\n                    return \"\";\n                }\n                s = s.substring(0, s.length() - 1); // 如果比较失败，则从字符串后面开始删除一个字符，再对比\n            }\n        }\n        return s;\n```\n\n***\n\n# 有效括号\n\n<details>\n<summary>题目描述</summary>\n  给定一个只包括 \'(\'，\')\'，\'{\'，\'}\'，\'[\'，\']\' 的字符串 s ，判断字符串是否有效。\n  有效字符串需满足：\n  左括号必须用相同类型的右括号闭合。\n  左括号必须以正确的顺序闭合。\n</details>\n\n\n\n\n## 代码部分\n\n```Java\npublic boolean isValid(String s) {\n        Stack<Character> stack = new Stack<Character>();\n        for (char c : s.toCharArray()) {\n            if (c == \'(\') {\n                stack.push(\')\');\n            } else if (c == \'[\') {\n                stack.push(\']\');\n            } else if (c == \'{\') {\n                stack.push(\'}\');\n            } else if (stack.isEmpty() || c != stack.pop()) {\n                return false;\n            }\n        }\n        return stack.isEmpty();\n    }	\n```\n\n## 需要注意的是：\n\ntoCharArray() 方法将字符串转换为字符数组，比如，string = \"123\"，那么toCharArray后，char[0] = \"1\"\n\n堆栈方法：Stack<T> stack = new Stack<>();\n\nStack.push()，将项，压入栈顶\n\nStack.pop()，将栈顶的项推出，并作为==**函数返回值**==\n\n所以假设有s = \"( [ ) ]\"，在代码中，最后一个else if的判断\n\n```Java\nelse if (stack.isEmpty() || c != stack.pop()) {\n                return false;\n            }\n```\n\n c永远和stack最后一个入栈的元素进行比较，因为s此时是【入栈，所以满足了c != stack.pop()，会return FALSE，说明不满足合法括号\n\n如果是s = \"( ) { }\"\n\n==在（进行比对时，）入栈，轮到）对比时，走到最后一个else if，出栈）与c的）比对，不满足最后一个else if条件==，说明括号合法。\n\n\n# 键盘行\n\n<details>\n<summary>题目描述</summary>\n  给你一个字符串数组 words ，只返回可以使用在 美式键盘 同一行的字母打印出来的单词。键盘如下图所示。\n  美式键盘 中：\n  第一行由字符 \"qwertyuiop\" 组成。\n  第二行由字符 \"asdfghjkl\" 组成。\n  第三行由字符 \"zxcvbnm\" 组成。\n</details>\n\n## 代码部分:\n\n```Java\npublic String[] findWords(String[] words) {\n        String s1 = \"qwertyuiopQWERTYUIOP\";\n        String s2 = \"asdfghjklASDFGHJKL\";\n        String s3 = \"zxcvbnmZXCVBNM\";\n        List<String> list = new ArrayList<>();\n        for (String word : words) { // word 表示words每个单词的字母，eg:H e l l o\n            int n1 = 0, n2 = 0, n3 = 0, leng = word.length();\n            for (int i = 0; i < leng; i++) {\n                if (s1.contains(Character.toString(word.charAt(i)))) { // 如果s1中包含每个word的单个字母，n1自增，下同\n                    n1++;\n                } else if (s2.contains(Character.toString(word.charAt(i)))) {\n                    n2++;\n                } else if (s3.contains(Character.toString(word.charAt(i)))) {\n                    n3++;\n                }\n            }\n            if (n1 == leng || n2 == leng || n3 == leng) { // 将自增的n和word的len作比较，如果一样，写入list\n                list.add(word);\n            }\n        }\n        return list.toArray(new String[list.size()]);\n    }\n```\n\n## 需要注意的是:\n\n由于返回值是个列表List，所以一开始要新建一个字符串List\n\n```Java\nList<String> list = new ArrayList<>();\n```\n\n最后把匹配上的单词加入List中\n\n```Java\nlist.add(word);\n```\n\n# 回文数\n\n<details>\n<summary>题目描述</summary>\n  给你一个整数 x ，如果 x 是一个回文整数，返回 true ；否则，返回 false 。\n回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。例如，121 是回文，而 123 不是。\n</details>\n\n\n## 代码部分 \n\n```Java\n    public boolean palindrome(int x) {\n        if(x == 0) {\n            return false;\n        }\n        if(x % 10 == 0){\n            return false;\n        }\n        int result = 0;\n        while (x > result){\n            result = result * 10 + x % 10;\n            x = x / 10;\n        }\n        return x == result || x == result / 10;\n    }\n```\n\n## 需要注意的是：\n\n逆序输出：\n\n```Java\nresult = result * 10 + x % 10;\nx = x / 10;\n```\n\n***\n\n# 合并两个有序列表\n\n<details>\n<summary>题目描述</summary>\n  将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。 \n  示例 1：\n  输入：l1 = [1,2,4], l2 = [1,3,4]\n  输出：[1,1,2,3,4,4]\n  示例 2：\n  输入：l1 = [], l2 = []\n  输出：[]\n  示例 3：\n  输入：l1 = [], l2 = [0]\n  输出：[0]\n</details>\n\n![merge_ex1](/Users/zengzl/Downloads/merge_ex1.jpg)\n\n## 代码部分：\n\n```Java\n/**\n * Definition for singly-linked list.\n * public class ListNode {\n * int val;\n * ListNode next;\n * ListNode() {}\n * ListNode(int val) { this.val = val; }\n * ListNode(int val, ListNode next) { this.val = val; this.next = next; }\n * }\n */\npublic class mergeTwoLists {\n    public static class ListNode {\n        int val;            //数据 ：节点数据\n        ListNode next;      //对象 ：引用下一个节点对象。在Java中没有指针的概念，Java中的引用和C语言的指针类似\n\n        ListNode(int val) {  //构造方法 ：构造方法和类名相同\n            this.val = val;     //把接收的参数赋值给当前类的val变量\n        }\n        public static ListNode mergeTwoLists(ListNode l1, ListNode l2) {\n            // 类似归并排序中的合并过程\n            ListNode dummyHead = new ListNode(0); // 初始化一个节点值为0的空节点\n            ListNode cur = dummyHead; //声明一个变量用来在移动过程中指向当前节点\n            while (l1 != null && l2 != null) {\n                if (l1.val < l2.val) {\n                    cur.next = l1;\n                    cur = cur.next;\n                    l1 = l1.next;\n                } else {\n                    cur.next = l2;\n                    cur = cur.next;\n                    l2 = l2.next;\n                }\n            }\n            // 任一为空，直接连接另一条链表\n            if (l1 == null) {\n                cur.next = l2;\n            } else {\n                cur.next = l1;\n            }\n            // 遍历ListNode\n            while (dummyHead != null) {\n                System.out.println(\"节点:\" + dummyHead.val);\n                dummyHead = dummyHead.next;\n            }\n            return dummyHead.next;\n        }\n        \n        public static void main(String[] args) {\n\n            ListNode l1_1st = new ListNode(1); // 创建首节点\n            ListNode l1_2nd = new ListNode(2);\n            ListNode l1_3rd = new ListNode(4);\n            l1_1st.val = 1;\n            l1_1st.next = l1_2nd;\n            l1_2nd.next = l1_3rd;\n\n            ListNode l2_1st = new ListNode(1); // 创建首节点\n            ListNode l2_2nd = new ListNode(3);\n            ListNode l2_3rd = new ListNode(4);\n            l2_1st.val = 1;\n            l2_1st.next = l2_2nd;\n            l2_2nd.next = l2_3rd;\n\n            mergeTwoLists(l1_1st, l2_1st);\n        }\n    }\n}\n```\n\n## 需要注意的是:\n\n新建一个ListNode需要如下代码：\n\n```Java\npublic static class ListNode {\n    int val;            //数据 ：节点数据\n    ListNode next;      //对象 ：引用下一个节点对象。在Java中没有指针的概念，Java中的引用和C语言的指针类似\n    ListNode(int val) {  //构造方法 ：构造方法和类名相同\n        this.val = val;     //把接收的参数赋值给当前类的val变量\n    }\n}\n```\n\n```Java\n// 遍历ListNode\nwhile (dummyHead != null) {\n  System.out.println(\"节点:\" + dummyHead.val);\n  dummyHead = dummyHead.next;\n}\n```\n\n', 'admin', '2022-05-22 11:42:41');
INSERT INTO `article` (`id`, `name`, `content`, `user`, `time`) VALUES (7, '防守打法撒旦法', '防守打法士大夫', '管理员', '2022-05-31 23:04:11');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `value` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` varchar(255) DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('user', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('home', 'el-icon-s-home', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('role', 'el-icon-s-platform', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('menu', 'el-icon-s-data', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('file', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('system', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('map', 'el-icon-map-location', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('dashbord', 'el-icon-s-marketing', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('article', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('im', 'el-icon-chat-round', 'icon');
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `size` bigint DEFAULT NULL COMMENT '文件大小',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除 0:未删除、1：已删除',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否禁用 0：不可用、1：可用',
  `md5` varchar(255) DEFAULT NULL COMMENT '文件md5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (62, '头像3.jpg', 'jpg', 213, 'http://localhost:9091/file/00b415f336824276bacec0ae9f2e1a25.jpg', 0, 1, '20349becce1db751f5cdbd20dc94ed9c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (63, '头像3.jpg', 'jpg', 213, 'http://localhost:9091/file/00b415f336824276bacec0ae9f2e1a25.jpg', 0, 1, '20349becce1db751f5cdbd20dc94ed9c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (64, '头像1.jpg', 'jpg', 31, 'http://localhost:9091/file/7b97882d718d435db684310eb810e03c.jpg', 0, 1, 'b79c0e3e17c05aec371f2c931c3eed84');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (65, '头像5.jpg', 'jpg', 32, 'http://localhost:9091/file/52c02ef913b14754a106c9c830172497.jpg', 0, 1, 'dd483d1d6e4dc38c0b71d2922e9dbff2');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (66, '头像1.jpg', 'jpg', 31, 'http://localhost:9091/file/7b97882d718d435db684310eb810e03c.jpg', 0, 1, 'b79c0e3e17c05aec371f2c931c3eed84');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (67, '头像3.jpg', 'jpg', 213, 'http://localhost:9091/file/00b415f336824276bacec0ae9f2e1a25.jpg', 0, 1, '20349becce1db751f5cdbd20dc94ed9c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (68, '头像1.jpg', 'jpg', 31, 'http://localhost:9091/file/7b97882d718d435db684310eb810e03c.jpg', 0, 1, 'b79c0e3e17c05aec371f2c931c3eed84');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (69, 'import.xlsx', 'xlsx', 9, 'http://localhost:9091/file/e9a427e4bc8143708adbfb524559cdef.xlsx', 1, 1, '1bfe28d77325d6a8cc00a9d1cf05d645');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (70, '截屏2022-01-05 下午10.42.16.png', 'png', 752, 'http://localhost:9091/file/02376dc407164aefba27a4a9be8a0d76.png', 0, 1, 'e3bed1091d40a1dcf76df7be3f60c34c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (71, '头像2.jpg', 'jpg', 168, 'http://localhost:9091/file/93dc3b95f33848628213bdd7fdee2b6b.jpg', 0, 1, '57dff6b6d804af87fdaca5a4330c046c');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `pid` int DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (2, '主页', '/home', 'el-icon-s-home', '描述1', NULL, 'Home');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (4, '系统管理', NULL, 'el-icon-menu', NULL, NULL, NULL);
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (5, '用户管理', '/user', 'el-icon-s-custom', NULL, 4, 'User');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (6, '角色管理', '/role', 'el-icon-s-platform', NULL, 4, 'Role');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (8, '文件管理', '/file', 'el-icon-document', NULL, 4, 'File');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (27, '菜单管理', '/menu', 'el-icon-s-data', NULL, 4, 'Menu');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (29, '地图', '/map', 'el-icon-map-location', NULL, NULL, 'Map');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (30, '数据报表', '/dashbord', 'el-icon-s-marketing', NULL, NULL, 'Dashbord');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (32, '文章列表', '/article', 'el-icon-document', NULL, NULL, 'Article');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (33, '聊天室', '/im', 'el-icon-chat-round', NULL, NULL, 'im');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (2, '老师', '老师（能看到用户、文件、地图、文章）', 'ROLE_TEACHER');
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (3, '学生', '学生（能看到文件、文章）', 'ROLE_STUDENT');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 6);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 8);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 27);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 29);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 30);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 32);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 33);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 8);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 29);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 32);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 8);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 32);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (37, 'admin', '123456', '管理员', NULL, NULL, NULL, '2022-05-31 22:45:07', 'http://localhost:9091/file/93dc3b95f33848628213bdd7fdee2b6b.jpg', 'ROLE_ADMIN');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (38, '201906150042', '123456', '201906150042', 'test@test.com', '123456', '广东清远xx区', '2022-05-31 22:46:19', NULL, 'ROLE_TEACHER');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (39, '201906150044', '123456', '201906150044', 'tset@test.com', '123', '广东深圳xx区', '2022-05-31 22:54:16', NULL, 'ROLE_STUDENT');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
