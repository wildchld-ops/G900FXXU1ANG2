.class Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AutoLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/autolink/AutoLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/samsung/contacts/autolink/AutoLinkActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/autolink/AutoLinkActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v15

    if-nez v15, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v15, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->getIdIndex(J)[Ljava/lang/String;
    invoke-static {v15, v7, v8}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$300(Lcom/samsung/contacts/autolink/AutoLinkFragment;J)[Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    :goto_1
    array-length v15, v9

    if-ge v6, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$400(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/ArrayList;

    move-result-object v15

    aget-object v16, v9, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const-string v15, "account_type_and_data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    invoke-static {v15, v1, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$500(Lcom/samsung/contacts/autolink/AutoLinkFragment;Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V

    const-string v15, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    if-nez v15, :cond_2

    const-string v15, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v15, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    if-nez v15, :cond_2

    if-eqz v11, :cond_2

    iput-object v11, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v15, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    if-nez v15, :cond_2

    if-eqz v5, :cond_2

    iput-object v5, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v15, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v4, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->setCheckItemList()V
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$600(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$700(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    const/16 v16, 0x0

    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->NAME_DATA_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    const/4 v12, 0x0

    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v15, "raw_contact_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v15, "mimetype"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->getIdIndex(J)[Ljava/lang/String;
    invoke-static {v15, v7, v8}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$300(Lcom/samsung/contacts/autolink/AutoLinkFragment;J)[Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    :goto_3
    array-length v15, v9

    if-ge v6, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$400(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/ArrayList;

    move-result-object v15

    aget-object v16, v9, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-virtual {v3, v13, v14}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->addRawContactId(J)V

    const-string v15, "account_type_and_data_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    invoke-static {v15, v1, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$500(Lcom/samsung/contacts/autolink/AutoLinkFragment;Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V

    const-string v15, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    if-nez v15, :cond_8

    const-string v15, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    iput-object v12, v3, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # invokes: Lcom/samsung/contacts/autolink/AutoLinkFragment;->setCheckItemList()V
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$600(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    # getter for: Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
    invoke-static {v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->access$700(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;->this$0:Lcom/samsung/contacts/autolink/AutoLinkFragment;

    const/16 v16, 0x3

    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_EMAIL_DATA_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
