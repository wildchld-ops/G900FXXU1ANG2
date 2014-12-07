.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addIceEmergencyContactsHeader(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "system_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "account_type"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "data_set"

    aput-object v1, v2, v0

    const-string v0, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "=\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ICE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/group/GroupInfo;

    const-string v1, "account_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "title"

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "system_id"

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$8200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "GroupInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
