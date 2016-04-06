
##以 R 處理 CPBL 比賽 log 檔
目標是計算得分矩陣與 Extra Base Running，以下為作業重點：

 - 處理 log 檔中沒有統一的各種敘述
 - 可讀性與重複利用，將判斷作為命名清楚的函數
 - 將結果儲存為 Data Frame ，便於計算

###得分矩陣
> ![run expectancy matrix example](http://cfile7.uf.tistory.com/image/241AF43C5437BF312E2299)

進攻方**每種情境 (壘包 / 出局數)** 下的得分期望值，例： 一壘有人零出局下的得分期望值為 0.8，在該局結束時期望能得到 0.8 分。
為了計算 cpbl 整個賽季的得分矩陣，我們必須記錄賽季所有比賽的各項資料：

> | **bases /   outs** | 0  | 1  | 2  |
|----------------|----|----|----|
| empty          | 1  | 2  | 3  |
| 1B             | 4  | 5  | 6  |
| 2B             | 7  | 8  | 9  |
| 3B             | 10 | 11 | 12 |
| 1B_2B          | 13 | 14 | 15 |
| 1B_3B          | 16 | 17 | 18 |
| 2B_3B          | 19 | 20 | 21 |
| 1B_2B_3B       | 22 | 23 | 24 |

> 共有 24 種情境，包含：

> - 每一次情境出現後，在該局結束時的得分
> - 每一種情境的出現次數


###待完成
 - Extra Base Running
 - [預期表格](https://docs.google.com/spreadsheets/d/1fTBCX7Cgo3JINW0_SKA1qA-GD1GrAtZ1XqllJl6fqDw/edit?usp=sharing)



###參考資料
[得分期望值與得分機率矩陣](https://www.ptt.cc/bbs/Sabermetrics/M.1141716665.A.69B.html)
[得分機率、得分期望值，以及與戰術使用的關聯](http://twb.tolink.com.tw/index.php?func=blog&article_id=140)
