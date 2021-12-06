Feature: 通知清單

    Scenario: 通知某個發問相關狀態
        Given 辭典有
            | 華語 | 羅馬字 | 漢字 |
        When 公開發問 "辱華"
        When 有人回答
            | 發問 | 羅馬字 | 漢字 |
            | 辱華 | jio̍k-huâ | jio̍k-huâ |
        Then 通知有人回答
            | 我的發問 | 關注數 | 回答數 | 瀏覽數 |
            | 辱華 | 0 | 1 | 0 |
        When 有人關注 "辱華"
        Then 通知有人關注
            | 我的發問 | 關注數 | 回答數 | 瀏覽數 |
            | 辱華 | 1 | 1 | 0 |
        When 有人取消關注
        Then 不需通知取消關注？
            | 我的發問 | 關注數 | 回答數 | 瀏覽數 |
            | 辱華 | 0 | 1 | 0 |

    Scenario: 取消公開發問
        Given 辭典有
            | 華語 | 羅馬字 | 漢字 |
        When 公開發問 "辱華"
        And 還沒有人關注之前取消發問
        Then 允許取消發問
        When 公開發問 "辱華"
        And 已經有人關注
        Then 不允許取消發問

    Scenario: 關注
        And 在首頁
        And 紀錄在我關注的發問頁
        And 紀錄在原發問者我關注的發問頁