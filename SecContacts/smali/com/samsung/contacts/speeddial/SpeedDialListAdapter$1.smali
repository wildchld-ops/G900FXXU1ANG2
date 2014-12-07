.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;
.super Ljava/lang/Object;
.source "SpeedDialListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const/4 v12, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z
    invoke-static {v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$102(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;Z)Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpinRange:I

    sub-int v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v12

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$300()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "contact_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_3

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14200000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method
