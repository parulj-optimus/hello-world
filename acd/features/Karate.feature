Feature:Traditional karate
@all
Scenario Outline:Where is the Master?
Given I navigate to Google
When I enter <karateStyle> into the search field
Then the text <masterSurname> should be present 
@wado @daily
Examples:
| karateStyle  | masterSurname |
| wado         | Ohtsuka       |
@shotokam @daily
Examples:
| karateStyle  | masterSurname |
| Shotokan     | Funakoshi     |
@goju @monthly
Examples:
| karateStyle  | masterSurname |
| Goju         | Miyagi        |
@kyokushinkai @monthly
Examples:
| karateStyle  | masterSurname |
| Kyokushinkai | Oyama         |

