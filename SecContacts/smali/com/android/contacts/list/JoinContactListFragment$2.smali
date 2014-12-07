.class Lcom/android/contacts/list/JoinContactListFragment$2;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string v2, "JoinContactListFragment"

    const-string v3, "PARTITION_ALL_CONTACTS create loader"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/contacts/list/JoinContactLoader;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/list/JoinContactLoader;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/list/JoinContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "getActivity() returns null during JoinContactListFragment#onCreateLoader()"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No loader for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # setter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->access$302(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$300(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$300(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mIsDone:Z
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$400(Lcom/android/contacts/list/JoinContactListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    const-string v1, "JoinContactListFragment"

    const-string v3, "PARTITION_ALL_CONTACTS load finished"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$300(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    iget-object v1, v1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    # setter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v3, v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$502(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$500(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/android/contacts/list/JoinContactListFragment;->mHasSuggestionList:Z
    invoke-static {v3, v1}, Lcom/android/contacts/list/JoinContactListFragment;->access$602(Lcom/android/contacts/list/JoinContactListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mSuggestionCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$500(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/JoinContactListFragment$2;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$300(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/database/Cursor;

    move-result-object v3

    # invokes: Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, v2, v3}, Lcom/android/contacts/list/JoinContactListFragment;->access$700(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
