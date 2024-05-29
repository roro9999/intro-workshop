greetings sire.

# intro-workshop

Welcome! This workshop is intended to provide a basic overview of both the Linux command line and how to set up and use Git. They may seem a little complicated now, but both are very widely used in software and data science, and learning how to use them will be extremely crucial skills. Let's get started!

## Initial setup

There are a few prerequisites needed for this workshop, so let's take care of those first. I've outlined platform-specific steps, and we'll reserve a chunk of time for people to complete those tasks on their individual machines.

Once you finish setting up your individual platform, you should also make sure you have a Github account. If you don't yet, take the time to create one. It'll be needed later in the workshop (and very frequently throughout your schooling!). You don't need to set up a new repo yet, though, if it asks you.

### Windows

Most of this workshop assumes usage of a Unix-like terminal. People using Mac or Linux already have this out of the box, but Windows users will need to install the **Windows Subsystem for Linux**. Microsoft has a guide for that [**here**](https://learn.microsoft.com/en-us/windows/wsl/install). Follow that guide to install Ubuntu Linux on your Windows machine. (This will be handy to have later in your CS/data science career too!)

A tip: when performing initial Ubuntu setup, you will be prompted for a password for your Linux user account. This _isn't_ related to your Windows password, and isn't especially security-sensitive, so use something simple and easy to remember! You _will_ need to use this password fairly frequently.

### MacOS

MacOS ships with a Linux terminal out of the box, which is great! Unfortunately, Apple ships some out-of-date tools (particularly `git`), so you'll want to update them before proceeding.

In a few words, we're going to install the `brew` package manager and use it to install `git`. If you already have `brew` installed, you can skip the first step.

[Install homebrew](https://brew.sh/).

Then, install `git`:

```shell
brew install git
```

After that, you should be good to go!

### Linux

Why are you here? (Joking! Glad you came!)

## Terminal time!

Now that you've completed initial setup, you should have a terminal in front of you. Let's learn how to use it!

### Navigation

Let's type our first command:

```shell
ls
```

This command is shorthand for `**l**i**s**t` (as in "list your files"), and displays all the files and directories that exist in your current directory. Pretty handy!

Linux machines all have file paths that start from root or `/`. But where are we relative to that? Time to learn a new command!

If you type in `pwd`, you'll see the current working directory. (**p**rint **w**orking **d**irectory)

```shell
pwd
```

Like mentioned above, we're currently in our "home" directory. This can vary a bit across systems. On Mac, it's `/Users/[Username]`, where `[Username]` is your username. On Linux, it's usually `/home/[username]`.

Since the home directory is accessed quite frequently, it's shortened to `~`.

Now, let's learn how to move around the filesystem! To make things easier, we're going to use a `git` command to pull down some files to work with:


```shell
git clone https://github.com/mbestavros/intro-workshop.git
```

For fun, try running `ls` again. You should see that we have a new folder called `intro-workshop`!

Once this is complete it's time to learn a new command: `cd`! Try this:

```shell
cd ~
```

This command tells your terminal to **c**hange **d**irectories to your `~` (or home) directory. If we try running `pwd` again, we should see the same output as last time, since nothing has changed.

Now, let's change directories for real! Try running:

```shell
cd intro-workshop
```

You should have changed directories into the new `intro-workshop` folder you saw before. How do we know it worked? We can check which directory we're in with `pwd`, of course!

```shell
pwd
```

You should see that your home directory location now has `intro-workshop` at the end of it!

Now, let's take a peek inside this directory with `ls`:

```shell
ls
```

You should see a bunch of files, including `README.md`, `LICENSE`, and a folder called `stuff`.

We've been using `cd` to navigate deeper into a directory structure. But how do we navigate back to a parent directory? Turns out, it's pretty simple:

```shell
cd ..
```

Confirm that it worked by running `pwd`, and you should see that you're back in your home directory! Nice!

We can also use a relative file path to get where we want. Remember how there was a directory called `stuff` within the `intro-workshop` directory? Let's go there directly:

```shell
cd intro-workshop/stuff
```

Explore around with `pwd` and `ls`. You should see a text file called `spark.txt`. What does it say? Time for a new command!

```shell
cat spark.txt
```

`cat` prints the contents of a file.

Let's try renaming that file. To do this, we can use the `mv` (move) command:

```shell
mv spark.txt renamed.txt
```

You can think about this as though you're moving a file to a new file in the same directory with a new name.

Now, if you `ls`, you'll see the newly-renamed file.

### Hidden Files

Some files in UNIX-based systems are hidden. Hidden files start with a `.`; you can see them by using `ls -a`. The `-a` is what's called a flag. It's used to denote special options for a command. First, make sure you're in the `stuff` directory with `pwd`, and then run:

```shell
ls -a
```

Wow! We have three secret files. You'll notice there are two secret files that are just `.` and `..` - those files are actually directories!

The `.` directory is a shortcut for the current directory. If you run `cd .`, you'll notice you didn't go anywhere! This is because you changed directories into the current directory.

The next directory, `..`, is used to denote one directory up. Let's test it out with `cd ..`.

We've moved one directory up! This is the same command we used before: we were navigating into the universal "up" directory that is a part of all UNIX directories.

Let's address the elephant in the room, `.betyoudidntseethisfile.txt`. Let's `cat` it out:

```shell
cat .betyoudidntseethisfile.txt
```

You should now be pretty comfortable with navigating around your filesystem using UNIX commands. Chances are a lot of your interaction with the command line will be using these commands. Now, we'll move on to some more advanced topics, starting with how to edit files with a text editor.

## File editing

I'm gonna make a bold statement: by the end of this workshop, you'll know how to exit `vim`. Because that's what we're going to learn!

For background, `vim` is a command line text editor. In other words, it's completely self-contained within the terminal, and it's fully text based.

We should still be in the `stuff` directory. Let's try editing the file we renamed using `vim`. (If `vim` isn't installed, you can try `vi` - they're almost identical for our purposes):

```shell
vim renamed.txt
```

By default, Vim only looks at the file, and will not let you make changes yet. You can move the cursor around using the arrow keys. When you're ready to start editing, press `i` (for Insert) to start changing text. Try adding a sentence or two!

When you're done, you'll need to save and exit. This can be done by pressing the escape key, which takes you back to the default view mode. To give a command, we use the colon key, and then type a command. To exit Vim and save the file you're working on, type ``:wq!` (short for "**w**rite and **q**uit". The exclamation mark is to ignore any warnings.)

You can use the `cat` command to see your edited file.

Vim is extremely powerful, and many people swear by it. I find it most useful to make small edits to things when I'm already in the command line; if I'm doing something more substantive, I'll use my code editor (I prefer VS Code).

To end this section, let's go back home with `cd ~`

## Using Git and Github on the command line

Now that we're decently comfortable using a command line to move around and edit things, let's start using Git and Github!

### Configuring your terminal to connect to Github

As of recently, Github requires secure authentication using `ssh` (which stands for **s**ecure **sh**ell) when interacting via a command line. We're going to set that up now.

#### Check for existing keys

You can check if you already have an SSH key set up by checking your `~/.ssh` directory:

```shell
ls -al ~/.ssh
```

Chances are you won't have any files listed. If you do have any, you can `cat` out the public key in `<keyname>.pub` and provide that to Github later.

#### Generate a new SSH key

If you don't have any keys from the previous step, it's time to generate some.

Enter the following SSH command, substituting the email address for **the email you used to sign up for Github**:

```shell
ssh-keygen -t rsa -C "your_email@example.com"
```

The command will prompt you for an alternate file location and a password; it's okay to accept the defaults by pressing Enter. (If you'd like to password protect your key, go ahead - just remember your password!)

Finally, check for the new key files using  `ls`:

```shell
ls -al ~/.ssh
```

You should see `id_rsa` and `id_rsa.pub` listed if you accepted the defaults.

#### Add the new SSH key to Github

Next, hop over to your browser and go to [https://github.com/settings/keys](https://github.com/settings/keys). This is where you'll enter your SSH key to pair your terminal with Github.

Click "New SSH Key" and give it a helpful name (your computer name is always a good idea).

Now, switch back to your terminal. Cat out your **public** SSH key at `id_rsa.pub`:

```shell
cat ~/.ssh/id_rsa.pub
```

Copy the printed key to your clipboard and paste it into the browser dialog, then click "Add SSH Key".

Voila! You're done! Time to start using Github!

A note **NEVER, EVER, EVER SEND YOUR PRIVATE SSH KEY ANYWHERE! THAT'S LIKE SHARING YOUR PASSWORD!**

### Creating a new repository on Github

Now that we've got a working Github connection, let's use it! Let's start by creating a new repository.

There are several ways to do this, but I find the easiest is just to do it on Github itself. They have handy tools to set up licensing and a README automatically.

Go to "Your repositories" in the right sidebar and click "New". Give it a name, a short description, tick the box to add a README file, and choose a license if you like. Then, click "Create repository".

Once the repository is created, we need to **clone** it to our command line. We can do this by clicking the big green "Code" button in the top right of the repository view. Go to the "SSH" tab within the drop down that appears, then copy the URL provided.

### Cloning your repository to your local machine

Then, go back to your terminal. Make sure you're in your home directory:

```shell
cd ~
```

For organization's sake, we're going to create a new directory called `git` using the command line. Use the `mkdir` command to do that:

```shell
mkdir git
```

Once created, `cd` into it:

```shell
cd git
```

Next, we're going to **clone** your new repository to your terminal. This effectively creates a copy of the files in the repository local to your machine, allowing you to use and manipulate them using software available on your local machine.

```shell
git clone git@github.com:<username>/<repo-name>.git
```

If you `ls`, you should see a new directory in your home folder with your new repo's name! `cd` into it.

```shell
cd <repo-name>
```

Now, you can make whatever changes you want. Add files, edit existing ones, etc.

### Managing your work with Git

Once you're satisfied with your changes, and want to make them available on the source repository on Github, it's time to begin using Git in earnest.

To start, let's try using `git status`:

```shell
git status
```

This command tells you about any changes that have been made to any files in a directory that is _managed_ by Git. This will look different depending on what exactly you changed about your repository. In my case, I changed `README.md`.

Git won't do anything with these changes just yet. To tell Git that we want these changes pushed to our remote repository, we have to create a **commit**.

To start that process, we're going to use `git add`:

```shell
git add README.md
```

This tells Git that we'd like to add the changes present in `README.md` to a new commit.

Note that `git add` takes any file pattern as input. We could also do `git add .` to add all changes present in the current directory, for example. (Be careful you don't add files you don't mean to, though!)

You can use `git add` as much as you want to add new changes. Once you've added all the files you want to your new commit, it's time to actually _create_ the commit. This can be done with `git commit`.

But we can't just use `git commit`! We also have to provide a _commit message_. This should be a concise description of what the commit changes. In my case, something like "Update README.md" should suffice.

```shell
git commit -m "Update README.md"
```

This command will create the new commit!

Finally, we need to _push_ our new commit to Github. We can do this with `git push`.

```shell
git push
```

Since we set up our SSH keys already, this should work straight away!

To check your work, go to Github on the web. You should see your commit message near the top of your repository! If you click on it, Github will give you a handy breakdown of the changes!

With that, you've just pushed a commit to Github! Pat yourself on the back!

Let's recap the workflow again:

- Clone your repo to your local machine (you should only need to do this once)
- Make changes as you see fit
- Add the changes to Git with `git add`
- Commit the changes with `git commit`
- Push the changes to the remote repo with `git push`

There's a ton more you can do with Git and Github, but those are the basics for today. If you're interested in a follow-up advanced Git workshop, let me know! Maybe we can make it happen!

Please feel free to ask questions, and thank you for following along!

## Credits

This workshop used some materials from the [Red Hat AICoE Intern Workshop](https://github.com/AICoE/workshop-intern-bootcamp-git/blob/main/0-set-up.md). Thanks!
