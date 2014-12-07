.class public final Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/16 v0, 0x70a

    if-ne p1, v0, :cond_4

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0

    :cond_4
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p3, v3, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-ne v0, p3, :cond_1

    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only draft // clear cache mConversation.getThreadId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x70a -> :sswitch_0
        0x25e4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "onQueryComplete, Fragment already detached. just Finish"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_1
    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteMessage:Lcom/android/mms/ui/ComposeDeleteMessage;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/database/Cursor;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->showDeleteConfirmDlg(Landroid/database/Cursor;)V

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "onQueryComplete(),MESSAGE_HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mShowConversationViewVerificationLog:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mShowConversationViewVerificationLog:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageListView;->mShowVerificationLog:Z

    :cond_3
    const/16 v20, 0x253a

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v20, p2

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v20

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    const-string v20, "Mms/ComposeMessageFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete: msg history query result is for threadId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", but mConversation has threadId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " starting a new query"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->sanityCheckConversation()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setListNewPosition(IILandroid/database/Cursor;)V

    :cond_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-le v5, v0, :cond_6

    const/4 v8, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "DeleteAnimation Progress Dismissed with onQueryComplete()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiCopyMode()Z

    move-result v20

    if-eqz v20, :cond_b

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0c0336

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "list query clear mSentMessage flag"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_c
    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-nez v20, :cond_f

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "Composer close condition 1"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->discard()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v20

    if-nez v20, :cond_d

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    const-string v20, "ssibong"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "delete thread : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v20, 0x0

    cmp-long v20, v9, v20

    if-lez v20, :cond_d

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v20

    cmp-long v20, v9, v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-static {v9, v10}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationListAdapter;->onContentChanged()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v6

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    const-string v20, "Mms/ComposeMessageFragment"

    const-string v21, "Composer close condition 2"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    :cond_10
    if-eqz v5, :cond_16

    if-nez v6, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasFocus:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V
    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5400(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->size()I

    move-result v20

    if-gtz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->isFocused()Z

    move-result v20

    if-nez v20, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getAnimationIndex()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/MessageListView;

    const/4 v12, 0x0

    const/16 v17, 0x0

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v12

    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v12, :cond_1b

    invoke-virtual {v11, v7}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/mms/ui/MessageListItem;

    if-eqz v15, :cond_15

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v20

    if-eqz v20, :cond_15

    invoke-virtual {v15}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    add-int/lit8 v17, v17, 0x1

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->convertToNewComposerModeIfNeeded(I)V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v20

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->requestFocus()Z

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_14

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    :cond_1b
    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    sub-int v21, v5, v17

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->setAnimationIndex(I)V

    :cond_1c
    const-string v20, "Mms/ComposeMessageFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onQueryComplete(),MESSAGE_LIST_QUERY_TOKEN, mMsgListAdapter.getCount()="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "animationIdx="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MessageListAdapter;->getAnimationIndex()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " threadID = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    check-cast p2, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v20, "Mms/ComposeMessageFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cursor.getCount() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_1e

    :cond_1d
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(JLjava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_1d

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->onContentChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-ne v3, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x70b -> :sswitch_0
        0x2537 -> :sswitch_2
        0x2538 -> :sswitch_1
        0x2539 -> :sswitch_3
        0x253a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateComplete / token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p3, v3, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onDeleteComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x25e5
        :pswitch_0
    .end packed-switch
.end method
