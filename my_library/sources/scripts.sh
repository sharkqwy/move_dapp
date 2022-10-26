# deploy
dev deploy /Users/kxia/Work/src/web3/move_dapp/my_library/release/my_library.v0.0.2.blob -s 0x702a78f777de6d1f7e1512d8516be00b -b
# call function init library
account execute-function --function 0x702a78f777de6d1f7e1512d8516be00b::MyLibrary::init_library -s 0x702a78f777de6d1f7e1512d8516be00b -b
# get library
state get resource 0x702a78f777de6d1f7e1512d8516be00b 0x702a78f777de6d1f7e1512d8516be00b::MyLibrary::Library
# add book
account execute-function --function 0x702a78f777de6d1f7e1512d8516be00b::MyLibrary::s_add_book --arg b"web3" --arg b"github.com" -s 0x702a78f777de6d1f7e1512d8516be00b -b
# update book at index
account execute-function --function 0x702a78f777de6d1f7e1512d8516be00b::MyLibrary::s_update_book_at_id --arg 0 --arg b"atest" --arg b"noncegeck.com" -s 0x702a78f777de6d1f7e1512d8516be00b -b
# delete book at index
account execute-function --function 0x702a78f777de6d1f7e1512d8516be00b::MyLibrary::s_delete_book_at_id --arg 0 -s 0x702a78f777de6d1f7e1512d8516be00b -b