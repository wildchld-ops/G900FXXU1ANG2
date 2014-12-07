.class Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;
.super Ljava/lang/Object;
.source "MyEmergencyInfoDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;
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
.field final synthetic this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "display_name"

    aput-object v6, v3, v4

    const-string v4, "account_type = \'vnd.sec.contact.phone\'"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # invokes: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->showEmptyView(Z)V
    invoke-static {v2, v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Z)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mFromEmergencyDialer:Z
    invoke-static {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$200(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # invokes: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->startDetailEditor()V
    invoke-static {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$300(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileRawContactId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$402(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$502(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mProfileDisplayName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$500(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mFromEmergencyDialer:Z
    invoke-static {v2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$200(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # invokes: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->startDetailEditor()V
    invoke-static {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$300(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # invokes: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->showEmptyView(Z)V
    invoke-static {v2, v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v5}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->access$600(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
