Feature: 公開發問和回答

    Scenario: 紀錄公開發問互動狀態
        When 公開發問 "辱華"
        Then 記在我的發問頁
            | 發問 | 關注數 | 回答數 | 瀏覽數 | 發問日 | 
            | 辱華 | 0 | 0 | 0 | 2021.12.1 |
        When 有人關注 "辱華"
        Then 更新我的發問頁
            | 關注數 |
            | 1 |
        When ？有人取消關注（m̄-bat thó-lūn ē-tshú-siau--eh--bē）？
        When 有人回答
            | 發問 | 羅馬字 | 漢字 |
            | 辱華 | jio̍k-huâ | jio̍k-huâ |
        Then 更新我的發問頁
            | 回答數 |
            | 1 |


    Scenario: 紀錄回答互動狀態
        Given 有人公開發問 "辱華"
        When 我回答
            | 羅馬字 | 漢字 | 發問 |
            | jio̍k-huâ | jio̍k-huâ | 辱華 |
        Then 記在我的回答頁
            | 羅馬字 | 漢字 | 出處 | 讚數 | 收藏數 | 回答日 | 
            | jio̍k-huâ | jio̍k-huâ | 照華語發音 | 0 | 0 | 2021.12.1 |
        When 有人收藏 "辱華"
        Then 更新我的回答頁
            | 收藏數 | 
            | 1 |
        When 有人取消收藏 "辱華"
        Then 更新我的回答頁
            | 收藏數 | 
            | 0 |
        When 有人讚 "辱華"
        Then 更新我的回答頁
            | 讚數 |
            | 1 |
        When ？有人取消讚（m̄-bat thó-lūn ē-tshú-siau--eh--bē）？
        Then 更新我的回答頁
            | 讚數 |
            | 0 |