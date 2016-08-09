
messyMain :: IO()
messyMain = do
    print "Who is the email for?"
    recipient <- getLine
    print "What's the title?"
    title <- getLine
    print "Who is the email from?"
    author <- getLine
    print (createEmail recipient title author)

createEmail recipient title author = (toPart recipient) ++ 
                                        (bodyPart title) ++ 
                                        (fromPart author)

toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart title = "Thanks for buying " ++ title ++ "!\n"
fromPart author = "Thanks, " ++ author
