.class Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;
.super Ljava/lang/Object;
.source "MyEmergencyInfoEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;
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
.field final synthetic this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$200(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$300()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mimetype"

    aput-object v4, v3, v7

    const-string v4, "data1"

    aput-object v4, v3, v8

    const-string v4, "data2"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "data3"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data4"

    aput-object v5, v3, v4

    const-string v4, "raw_contact_id =? AND mimetype =?"

    new-array v5, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$400(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "vnd.sec.cursor.item/emergency_info"

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # invokes: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->bindData(Landroid/database/Cursor;)V
    invoke-static {v0, p2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$500(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
