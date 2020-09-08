def pageCount(n, p)
  totalpages = n / 2
  pagefromleft = p / 2
  pagefromright = totalpages - pagefromleft
  minimum = pagefromleft < pagefromright ? pagefromleft : pagefromright
end