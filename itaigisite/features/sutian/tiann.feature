Feature: 首頁
    熱門查詢區，考慮到問題賞味期限以及短期內盡量不動以延續討論，將另計分排先後。

    Scenario: 顯示熱門查詢
        Given 辭典有
            | 華語 | 羅馬字 | 漢字 | 發問日 |
            | 章魚 | tsio̍h-kī/tsio̍h-kū | 石距 | 
            | 章魚 | peh-kha-hî | 八跤魚 | 
            | 章魚 | thôo-pô | 土婆 | 
            | 章魚 | tsiunn-hî/tsiunn-hû | 章魚 |

        Then 出現熱門查詢
            | 華語 |  關注數 | 回答數 | 瀏覽數 | 發問日 |
            | 章魚 | | 4 | | |