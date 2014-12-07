.class Lcom/google/android/finsky/library/SQLiteLibrary$1;
.super Ljava/lang/Object;
.source "SQLiteLibrary.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/SQLiteLibrary;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/finsky/library/LibraryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/SQLiteLibrary;

.field final synthetic val$all:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->this$0:Lcom/google/android/finsky/library/SQLiteLibrary;

    iput-object p2, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Lcom/google/android/finsky/library/LibraryEntry;
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v29, 0x0

    :goto_0
    return-object v29

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    :goto_1
    const-string v1, "u-wl"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    move/from16 v0, v34

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/google/android/finsky/utils/Utils;->commaUnpackStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0x9

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v1, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/finsky/library/LibraryAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IJ[Ljava/lang/String;JJ)V

    move-object/from16 v29, v1

    goto/16 :goto_0

    :cond_1
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_1

    :cond_2
    const/16 v1, 0xf

    move/from16 v0, v34

    if-ne v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v15, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xb

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xc

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    :cond_3
    const-string v28, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    :cond_4
    new-instance v12, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v5

    invoke-direct/range {v12 .. v28}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJJZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v29, v12

    goto/16 :goto_0

    :cond_5
    const/16 v26, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xb

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_7

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xc

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    new-instance v29, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    move/from16 v32, v15

    move-object/from16 v33, v3

    move/from16 v34, v4

    move-wide/from16 v35, v5

    move-wide/from16 v38, v22

    move-wide/from16 v40, v24

    move/from16 v42, v26

    invoke-direct/range {v29 .. v42}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/Long;JJZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v26, 0x0

    goto :goto_3

    :cond_8
    const/16 v1, 0xb

    move/from16 v0, v34

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    if-eqz v27, :cond_9

    if-eqz v28, :cond_9

    new-instance v29, Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    move-object/from16 v32, v3

    move/from16 v33, v4

    move-object/from16 v34, v27

    move-object/from16 v35, v28

    move-wide/from16 v36, v5

    invoke-direct/range {v29 .. v37}, Lcom/google/android/finsky/library/LibraryInAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    new-instance v29, Lcom/google/android/finsky/library/LibraryEntry;

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    move/from16 v32, v15

    move-object/from16 v33, v3

    move/from16 v35, v4

    move-wide/from16 v36, v5

    move-wide/from16 v38, v20

    invoke-direct/range {v29 .. v39}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJ)V

    goto/16 :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/library/SQLiteLibrary$1;->next()Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
