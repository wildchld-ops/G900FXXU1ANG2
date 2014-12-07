.class public Lcom/samsung/contacts/autolink/AutoLinkFragment;
.super Landroid/app/ListFragment;
.source "AutoLinkFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final COMPARE_TYPE_NAME:Ljava/lang/String;

.field private final CURRENT_SPINNER:Ljava/lang/String;

.field private final GET_PROFILE_IMAGE:I

.field private final IS_LOADING:Ljava/lang/String;

.field private final JOIN_BY_EMAIL:I

.field private final JOIN_BY_NAME:I

.field private final JOIN_BY_PHONE:I

.field private final LINK_CNT:Ljava/lang/String;

.field private final MAX_ARGS_COUNT:I

.field private final MEMBERS_CHECKED_LIST:Ljava/lang/String;

.field private mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

.field private mAutoLinkMembers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkData;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompareTypeName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpinner:I

.field private mCursor:Landroid/database/Cursor;

.field private mDoneMenu:Landroid/widget/Button;

.field private mEmptyImageView:Landroid/widget/ImageView;

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;

.field private mIdIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnableDone:Z

.field private mIsLoading:[Z

.field private mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

.field private mSelectedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSpinner:Landroid/widget/Spinner;

.field private mViewCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->JOIN_BY_NAME:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->JOIN_BY_PHONE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->JOIN_BY_EMAIL:I

    iput v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->GET_PROFILE_IMAGE:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->MAX_ARGS_COUNT:I

    const-string v0, "members_checked_list"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->MEMBERS_CHECKED_LIST:Ljava/lang/String;

    const-string v0, "is_loading"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->IS_LOADING:Ljava/lang/String;

    const-string v0, "current_spinner"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->CURRENT_SPINNER:Ljava/lang/String;

    const-string v0, "compare_type_name"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->COMPARE_TYPE_NAME:Ljava/lang/String;

    const-string v0, "link_count"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->LINK_CNT:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsEnableDone:Z

    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mViewCreated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->doneAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/autolink/AutoLinkFragment;J)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->getIdIndex(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/autolink/AutoLinkFragment;Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->setCheckItemList()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/contacts/autolink/AutoLinkFragment;)Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    return-object v0
.end method

.method private addAccountInformation(Ljava/lang/String;Lcom/samsung/contacts/autolink/AutoLinkContactChildData;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountTypeNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountTypeNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mAccountIconList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/contacts/list/AccountIconInfo;->getAccountIcon(Ljava/lang/String;)Lcom/samsung/contacts/list/AccountIconInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/list/AccountIconInfo;->getAccountIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkIsEmpty(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mViewCreated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0e006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private doSelectCheckBox(Lcom/samsung/contacts/autolink/AutoLinkData;)V
    .locals 13

    const v12, 0x7f0e0385

    const/16 v11, 0xa

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-boolean v6, p1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-nez v6, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    iget-object v6, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    iget v7, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mParentIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget-boolean v6, v0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-nez v6, :cond_1

    iget v6, v3, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedTotalJoinedCount:I

    iget v7, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    add-int/2addr v6, v7

    if-le v6, v11, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v12, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSelectedIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->clickCheck(Lcom/samsung/contacts/autolink/AutoLinkContactParentData;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e0386

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move-object v3, p1

    check-cast v3, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v1, v3, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    iget v4, v3, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    iget-boolean v6, p1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-nez v6, :cond_5

    const/4 v5, 0x1

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_3

    iget-object v6, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    add-int v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-virtual {v0, v9, v3}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->setCheck(ZLcom/samsung/contacts/autolink/AutoLinkContactParentData;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v12, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const/4 v5, 0x0

    :cond_3
    if-ne v5, v9, :cond_0

    iput-boolean v9, v3, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v1, :cond_6

    iget-object v6, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    add-int v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-virtual {v0, v10, v3}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->setCheck(ZLcom/samsung/contacts/autolink/AutoLinkContactParentData;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v10, v3, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    goto :goto_0
.end method

.method private doneAction()V
    .locals 15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v10, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-eqz v10, :cond_3

    move-object v10, v5

    check-cast v10, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v10, v10, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    const/4 v4, 0x1

    const-wide/16 v1, -0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    check-cast v5, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v10, v5, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0e034f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    iget-boolean v10, v0, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-gez v10, :cond_4

    iget-wide v1, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    new-instance v6, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;

    invoke-direct {v6, v1, v2}, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;-><init>(J)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_0

    iget-wide v8, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    iget-object v10, v6, Lcom/samsung/contacts/autolink/AutoLinkMultipleJoinData;->mTargetList:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    invoke-interface {v10, v7}, Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;->onClickDoneAction(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private getEmailDetail()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    :goto_1
    const-string v6, "data1"

    move-object v13, v12

    :cond_2
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    new-instance v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    invoke-direct {v12}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v11, v12, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v12

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-direct {v5}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "contact_id"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-eqz v17, :cond_6

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildIdList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object v13, v12

    goto/16 :goto_2

    :cond_5
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildIdList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iput-object v11, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    iput-object v11, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "display_name"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    iget-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    :cond_7
    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    iput-wide v8, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSaveChildId:J

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v10, 0x0

    move-object v12, v13

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    iput v10, v12, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_4
    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_9

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    move-object/from16 v0, v17

    iput v10, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mParentIndex:I

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    add-int v18, v10, v4

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catchall_0
    move-exception v17

    move-object v12, v13

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v17

    :cond_9
    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->rearrageListAndHaspmap(Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x0

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x0

    const/16 v17, 0x3

    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v19, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_EMAIL_DATA_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    goto :goto_5
.end method

.method private getIdIndex(J)[Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNameDetails()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    :goto_1
    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSelectedIdList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "display_name"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "display_name_alt"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    if-eqz v14, :cond_3

    invoke-virtual {v9, v14}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_6

    :cond_3
    new-instance v11, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    invoke-direct {v11}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;-><init>()V

    iput v5, v11, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    move v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    move-object v14, v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    new-instance v6, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-direct {v6}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;-><init>()V

    iput v5, v6, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    iput v12, v6, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mParentIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    iget-object v0, v6, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "link_count"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mLinkedCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "_id"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->putIdIndex(JI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v0, v10, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v10, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move-object v13, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v17

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->rearrageListAndHaspmap(Ljava/util/ArrayList;)V

    const/16 v17, 0x0

    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v19, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->NAME_DATA_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getPhoneDetail()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    :goto_1
    const-string v6, "data4"

    move-object v13, v12

    :cond_2
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "data1"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    new-instance v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    invoke-direct {v12}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v7, v12, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v13, v12

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-direct {v5}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "contact_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_5

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v7, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "display_name"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    iget-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    :cond_6
    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    iput-wide v8, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSaveChildId:J

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v13, v12

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v6, "data1"

    :cond_8
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    new-instance v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    invoke-direct {v12}, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-object v11, v12, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v13, v12

    goto :goto_3

    :catchall_0
    move-exception v18

    move-object v12, v13

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v18

    :cond_9
    :try_start_6
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    new-instance v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    invoke-direct {v5}, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "contact_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_a

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iput-object v11, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mCompareData:Ljava/lang/String;

    iput-object v11, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "display_name"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    iget-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mName:Ljava/lang/String;

    :cond_b
    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    iput-wide v8, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSaveChildId:J

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v13, v12

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v10, 0x0

    move-object v12, v13

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    iput v10, v12, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_6
    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_d

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    move-object/from16 v0, v18

    iput v10, v0, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mParentIndex:I

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    add-int v19, v10, v4

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_1
    move-exception v18

    move-object v12, v13

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v18

    :cond_d
    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    iget-object v0, v12, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->rearrageListAndHaspmap(Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const/16 v17, 0x0

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    const/4 v14, 0x0

    const/16 v18, 0x3

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v20, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_EMAIL_DATA_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    goto :goto_7

    :catchall_3
    move-exception v18

    goto/16 :goto_4
.end method

.method private isEnableDone()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v2, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v2, v1, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mSelectedChildrenCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private putIdIndex(JI)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private rearrageListAndHaspmap(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/contacts/autolink/AutoLinkData;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v8, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-eqz v8, :cond_2

    move-object v6, v5

    check-cast v6, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;

    iget v8, v6, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    if-nez v8, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v8, v6, Lcom/samsung/contacts/autolink/AutoLinkContactParentData;->mChildCount:I

    if-ne v8, v10, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v2, v10, :cond_0

    move-object v1, v5

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const/4 v2, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    invoke-virtual {v8}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    iget v9, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    aget-boolean v8, v8, v9

    invoke-direct {p0, v8}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->checkIsEmpty(Z)V

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v8, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-ne v8, v10, :cond_4

    iput v0, v5, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    move v7, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v5

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    iput v0, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIndex:I

    iput v7, v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mParentIndex:I

    iget-wide v8, v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mId:J

    invoke-direct {p0, v8, v9, v0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->putIdIndex(JI)V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/samsung/contacts/autolink/AutoLinkContactChildData;->mIsLastChild:Z

    :cond_6
    return-void
.end method

.method private setCheckItemList()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v2, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsParent:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->doSelectCheckBox(Lcom/samsung/contacts/autolink/AutoLinkData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->isEnableDone()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsEnableDone:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSelectedIdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    const-string v0, "display_name"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;-><init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mHandler:Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;

    return-void

    :cond_0
    const-string v0, "is_loading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    const-string v0, "current_spinner"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    const-string v0, "compare_type_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    const-string v0, "members_checked_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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

    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v0, "AutoLinkFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateLoader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->NAME_PROJECTION:[Ljava/lang/String;

    const-string v4, "lower(display_name) IN (SELECT lower( display_name) FROM view_contacts GROUP BY lower( display_name) HAVING COUNT(*) > 1) AND is_sim = 0 AND _id IN default_directory AND link_accounts != \'vnd.sec.contact.phone/preload\'"

    const-string v6, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    aput-boolean v3, v0, v3

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->DATA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->PHONE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id  IN (SELECT data_id  FROM phone_lookup WHERE normalized_number IN ( SELECT normalized_number FROM phone_lookup GROUP BY normalized_number HAVING COUNT(*) > 1)) AND is_sim = 0 AND contact_id IN default_directory AND data2 != 4 AND data2 != 5 AND data_set IS NOT \'preload\'"

    const-string v6, "data1"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->DATA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/autolink/AutoLinkLoaderFactory;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1 IN (SELECT data1 FROM view_data WHERE mimetype = \'vnd.android.cursor.item/email_v2\' GROUP BY data1 HAVING COUNT(*) > 1) AND is_sim = 0 AND contact_id IN default_directory AND data_set IS NOT \'preload\' AND mimetype = \'vnd.android.cursor.item/email_v2\'"

    const-string v6, "data1"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    invoke-interface {v2}, Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;->getCustomActionLayout()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/contacts/autolink/AutoLinkFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment$1;-><init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsEnableDone:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/contacts/autolink/AutoLinkFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment$2;-><init>(Lcom/samsung/contacts/autolink/AutoLinkFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    if-eq v0, p3, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSelectedIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p3, :cond_2

    const-string v0, "display_name"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    iput v4, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    aget-boolean v0, v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->checkIsEmpty(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->isEnableDone()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsEnableDone:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    if-ne p3, v1, :cond_3

    const-string v0, "data1"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_3
    if-ne p3, v2, :cond_0

    const-string v0, "data1"

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/autolink/AutoLinkData;

    invoke-direct {p0, v0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->doSelectCheckBox(Lcom/samsung/contacts/autolink/AutoLinkData;)V

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mDoneMenu:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->isEnableDone()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsEnableDone:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
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

    const/4 v3, 0x0

    const-string v0, "AutoLinkFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AutoLinkFragment"

    const-string v1, "Nothing loaded"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    iget v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    aput-boolean v3, v0, v3

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->getNameDetails()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    const/4 v1, 0x1

    aput-boolean v3, v0, v1

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->getPhoneDetail()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    invoke-direct {p0}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->getEmailDetail()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3

    const-string v0, "AutoLinkFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoaderReset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/autolink/AutoLinkData;

    iget-boolean v1, v1, Lcom/samsung/contacts/autolink/AutoLinkData;->mIsChecked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "members_checked_list"

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCheckItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "current_spinner"

    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "compare_type_name"

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCompareTypeName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_loading"

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f080037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f070004

    const v3, 0x7f030122

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f080038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0801d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mEmptyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mViewCreated:Z

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIsLoading:[Z

    iget v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mCurrentSpinner:I

    aget-boolean v1, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/contacts/autolink/AutoLinkFragment;->checkIsEmpty(Z)V

    new-instance v1, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mContext:Landroid/content/Context;

    const v3, 0x102000a

    iget-object v4, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAutoLinkMembers:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/contacts/autolink/AutoLinkListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mAdapter:Lcom/samsung/contacts/autolink/AutoLinkListAdapter;

    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setListener(Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mListener:Lcom/samsung/contacts/autolink/AutoLinkActivity$AutoLinkListner;

    return-void
.end method

.method public startSecondaryQuery(ILandroid/net/Uri;[Ljava/lang/String;)V
    .locals 12

    const/16 v10, 0x1e

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_0

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v10, [Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    const-string v0, "?,"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v9

    aget-object v0, v6, v9

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, " )"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkFragment;->mHandler:Lcom/samsung/contacts/autolink/AutoLinkFragment$QueryHandler;

    const/4 v2, 0x0

    const-string v7, "is_super_primary DESC"

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
