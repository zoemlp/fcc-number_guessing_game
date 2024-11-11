camper: /project$ mkdir number_guessing_game
camper: /project$ cd number_guessing_game/
camper: /number_guessing_game$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint:   git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint:   git branch -m <name>
Initialized empty Git repository in /workspace/project/number_guessing_game/.git/
camper: /number_guessing_game$ git branch
camper: /number_guessing_game$ touch number_guess.sh
camper: /number_guessing_game$ chmod +x number_guess.sh
camper: /number_guessing_game$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        number_guess.sh

nothing added to commit but untracked files present (use "git add" to track)
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "Initial commit"
[master (root-commit) 7c4fa46] Initial commit
 1 file changed, 1 insertion(+)
 create mode 100755 number_guess.sh
camper: /number_guessing_game$ git branch
* master
camper: /number_guessing_game$ git main
git: 'main' is not a git command. See 'git --help'.

The most similar command is
        mailinfo
camper: /number_guessing_game$ git checkout -b main
Switched to a new branch 'main'
camper: /number_guessing_game$ git branch
* main
  master
camper: /number_guessing_game$ ./number_guess.sh
Enter your username:
dsfg
743
camper: /number_guessing_game$ man test
camper: /number_guessing_game$ ./number_guess.sh
Enter your username:
s
Guess the secret number between 1 and 1000:
./number_guess.sh: line 38: syntax error near unexpected token `fi'
./number_guess.sh: line 38: `        fi'
camper: /number_guessing_game$ ./number_guess.sh
Enter your username:
r
Guess the secret number between 1 and 1000:
500
It's higher than that, guess again:1
It's higher than that, guess again:1000
It's lower than that, guess again:300
It's higher than that, guess again:400
It's higher than that, guess again:500
It's higher than that, guess again:800
It's higher than that, guess again:900
It's lower than that, guess again:850
It's lower than that, guess again:830
It's higher than that, guess again:840
It's higher than that, guess again:845
It's lower than that, guess again:843
It's lower than that, guess again:841
It's higher than that, guess again:842
You guessed it in 15 tries. The secret number was 842. Nice job!
camper: /number_guessing_game$ ./number_guess.sh
Enter your username:
luis
Welcome, luis! It looks like this is your first time here.
Guess the secret number between 1 and 1000:
500
It's lower than that, guess again:300
It's lower than that, guess again:100
It's lower than that, guess again:50
It's higher than that, guess again:80
It's lower than that, guess again:60
It's higher than that, guess again:70
It's lower than that, guess again:65
It's higher than that, guess again:68
You guessed it in 9 tries. The secret number was 68. Nice job!
ERROR:  syntax error at or near ")"
LINE 1: INSERT INTO games(number_guesses, user_id) VALUES (9, )
                                                              ^
camper: /number_guessing_game$ ./number_guess.sh
Enter your username:
kl
Welcome, kl! It looks like this is your first time here.
Guess the secret number between 1 and 1000:
500
It's lower than that, guess again:300
It's lower than that, guess again:200
It's lower than that, guess again:100
It's lower than that, guess again:50
It's lower than that, guess again:25
It's lower than that, guess again:12
It's lower than that, guess again:6
It's lower than that, guess again:3
It's lower than that, guess again:1
You guessed it in 10 tries. The secret number was 1. Nice job!
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "feat: guessing game"
[main d81bf38] feat: guessing game
 1 file changed, 54 insertions(+), 1 deletion(-)
camper: /number_guessing_game$ gir status
bash: gir: command not found
camper: /number_guessing_game$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   number_guess.sh

no changes added to commit (use "git add" and/or "git commit -a")
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "fix: guessing game
> 
> git add .
> 
> 
> 
> 
> 
> 
> 
> 
> git add .
> git commit -m "fix: guessing game

git add .








git add .
error: pathspec 'guessing' did not match any file(s) known to git
error: pathspec 'game' did not match any file(s) known to git
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "feat: guessing game 1"
[main 500dad9] feat: guessing game 1
 1 file changed, 2 insertions(+), 1 deletion(-)
camper: /number_guessing_game$ ^C
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "feat: guessing game 2"
On branch main
nothing to commit, working tree clean
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "feat: guessing game 2"
[main a10c3f4] feat: guessing game 2
 1 file changed, 1 insertion(+), 1 deletion(-)
camper: /number_guessing_game$ git commit -m "feat: guessing game 2"
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   number_guess.sh

no changes added to commit (use "git add" and/or "git commit -a")
camper: /number_guessing_game$ git add .
camper: /number_guessing_game$ git commit -m "feat: guessing game 3"
[main 04c7932] feat: guessing game 3
 1 file changed, 1 insertion(+)
camper: /number_guessing_game$ pg_dump -cC --inserts -U freecodecamp number_guess > number_guess.sql
camper: /number_guessing_game$ 
