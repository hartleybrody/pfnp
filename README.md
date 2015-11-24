# Programming for Non Programmers
Taught by me, Hartley Brody 😄

The class is organzied by General Assembly. More information [here](https://generalassemb.ly/education/programming-for-non-programmers-bootcamp/boston/18504).

## Day 1

### What is Programming?
We'll start by answering the most basic question of the weekend. What *is* programming?

How does a computer think? What can it do? Where does code run? 

We'll answer some of these questions with an ice breaker exercise.

### Web Sites vs Web Apps
You're probably familiar with a few websites and web apps that you use every day.

What are the differences between them? What do they have in common?

### The "Front" End
The frontend of any web application or web site is the code that runs in the visitor's browser, as opposed to code that runs on the site's own web server.

Let's take a look at the frontends of a few simple sites, using tools that our browser provides.

Tomorrow, we'll look at the backend. (ATM analogy)

### HTML vs CSS vs Javascript
HTML and CSS can be thought of as instructions for the computer, but reading the code, they don't look like instructions. This is "[Declarative Programming](https://en.wikipedia.org/wiki/Declarative_programming)" (same as SQL). We're not telling the computer how to draw the website on the screen.

Javascript is an example of "[Imperative Programming](https://en.wikipedia.org/wiki/Imperative_programming)" where we tell the computer what we want it to do, step-by-step. This is also commonly used by backend programming languages, that live on the server.

### Building our own websites!
Now for the fun part. Using sublime text, we'll create an HTML file as well as some CSS and Javascript to build our own web pages.

We'll start out by all building similar sites following a template, and then we'll get to add more content and customize them.

#### HTML
HTML is the Hyper Text **Markup Lanuage**. It's basically just a way to add some structure and meaning to the content of your site, so it's not just a big blob of text.

Some essential tags to know:

 * `<div class="" id=""></div>` These are the basic block-level elements that we'll use to structure the parts of our sites. They usually have `class` or `id` attributes to help identify what they are and what they contain (important for CSS and JS)
 * `<a href="">A link</a>` Anchors, or "link" tags allow you to link to other pages on the 'net. These were the whole basis for the world wide web!
 * `<img src="" alt="" />` Image tags are self-closing, so they don't need a `</img>` (what would go inside anyways?). Useful for posting images.

#### CSS
I hope you've been using a lot of `class`es and `id`s in your HTML. Now we can use those hooks to add styles to our document. 

Essential CSS selectors:

```css
.my-class { /* this dot is used for selecting elements by their class name */
    color: red;
}
```

```css
#my-id { /* this pound-sign is used for selecting elements by their IDs */
    color: blue;
}
```

#### Javascript
If we have time, we'll look at adding some Javascript to our sites.


## Day 2