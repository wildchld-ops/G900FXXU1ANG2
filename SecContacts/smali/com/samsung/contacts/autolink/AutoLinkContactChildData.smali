.class Lcom/samsung/contacts/autolink/AutoLinkContactChildData;
.super Lcom/samsung/contacts/autolink/AutoLinkData;
.source "AutoLinkData.java"


# instance fields
.field public mAccountIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mAccountTypeNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEmailAddress:Ljava/lang/String;

.field public mId:J

.field public mIsDefault:Z

.field public mIsLastChild:Z

.field public mLinkedCount:I

.field public mName:Ljava/lang/String;

.field public mParentIndex:I

.field public mPhoneNumber:Ljava/lang/String;

.field public mPhoto:[B

.field private mRawContactIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkData;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsDefault:Z

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoto:[B

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountTypeNameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mRawContactIdList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addRawContactId(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mRawContactIdList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mRawContactIdList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    :cond_0
    return-void
.end method

.method public declared-synchronized clickCheck(Lcom/samsung/contacts/autolink/AutoLinkContactParentData;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/autolink/AutoLinkContactParentData;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-ne v2, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p1, v1}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->minusSelectedChildCount(I)V

    iget-wide v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p1, v1}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->addSelectedChildCount(I)V

    iget-wide v1, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheck(ZLcom/samsung/contacts/autolink/AutoLinkContactParentData;)Z
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget v2, p2, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    iget v3, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    add-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    iput-boolean p1, p0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    if-ne p1, v1, :cond_2

    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p2, v2}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->addSelectedChildCount(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    invoke-virtual {p2, v2}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->minusSelectedChildCount(I)V

    goto :goto_0
.end method
