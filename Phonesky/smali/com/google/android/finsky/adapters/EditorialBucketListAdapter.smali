.class public Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
.super Lcom/google/android/finsky/adapters/CardSimpleListAdapter;
.source "EditorialBucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;,
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    }
.end annotation


# instance fields
.field private final mBucket:Lcom/google/android/finsky/api/model/Bucket;

.field private mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mInitialRestoreState:Landroid/os/Bundle;

.field private final mNumItemsPerFooterRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/api/model/Bucket;
    .param p7    # Landroid/os/Bundle;
    .param p8    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/Bucket;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v1, 0x7f040060

    :goto_0
    iput v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mCellLayoutId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNumItemsPerFooterRow:I

    iput-object p5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    return-void

    :cond_0
    const v1, 0x7f040068

    goto :goto_0
.end method

.method private getEditorialFooterHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getEditorialFooterRow(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 21
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # I

    invoke-super/range {p0 .. p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getCount()I

    move-result v19

    sub-int v19, p3, v19

    add-int/lit8 v7, v19, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNumItemsPerFooterRow:I

    move/from16 v19, v0

    mul-int v13, v7, v19

    if-nez p1, :cond_0

    const v19, 0x7f040026

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNumItemsPerFooterRow:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    const v19, 0x7f040067

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;-><init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialVideoWrapper(Landroid/widget/RelativeLayout;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/finsky/layout/BucketRow;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/layout/BucketRow;->setSameChildHeight(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNumItemsPerFooterRow:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    add-int v15, v13, v9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_1

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mWrapper:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$100(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    aget-object v14, v17, v15

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mWrapper:Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$100(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mTitle:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$200(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/TextView;

    move-result-object v19

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mDescription:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$300(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Landroid/widget/TextView;

    move-result-object v19

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;->description:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    iget-object v4, v14, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v12, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_4

    aget-object v11, v4, v10

    iget v0, v11, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    iget-object v0, v11, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    iget v0, v11, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$400(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Lcom/google/android/finsky/layout/HeroGraphicView;

    move-result-object v19

    const/high16 v20, 0x3f100000

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/layout/HeroGraphicView;->setDefaultAspectRatio(F)V

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$400(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Lcom/google/android/finsky/layout/HeroGraphicView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/util/List;)V

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$400(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Lcom/google/android/finsky/layout/HeroGraphicView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    # getter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-static {v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$400(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;)Lcom/google/android/finsky/layout/HeroGraphicView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/layout/HeroGraphicView;->setBackgroundResource(I)V

    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_6
    return-object p1
.end method

.method private getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/android/finsky/layout/EditorialListHeader;

    move-object v0, p1

    :goto_0
    iget v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    iget-object v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/layout/EditorialListHeader;->bind(ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;)V

    return-object v0

    :cond_0
    const v1, 0x7f040066

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EditorialListHeader;

    move-object v0, v1

    goto :goto_0
.end method

.method private getEditorialVideoWrapper(Landroid/widget/RelativeLayout;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;
    .locals 2
    .param p1    # Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;-><init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V

    # setter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mWrapper:Landroid/widget/RelativeLayout;
    invoke-static {v0, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$102(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v1, 0x7f08011d

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HeroGraphicView;

    # setter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mVideoImage:Lcom/google/android/finsky/layout/HeroGraphicView;
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$402(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Lcom/google/android/finsky/layout/HeroGraphicView;)Lcom/google/android/finsky/layout/HeroGraphicView;

    const v1, 0x7f08011f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mTitle:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$202(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v1, 0x7f080120

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->mDescription:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;->access$302(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialVideoHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-object v0
.end method

.method private getFooterItemCount()I
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v1, v2

    int-to-double v2, v1

    iget v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNumItemsPerFooterRow:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method protected configureBucketRow(Lcom/google/android/finsky/layout/BucketRow;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/layout/BucketRow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/BucketRow;->setSameChildHeight(Z)V

    return-void
.end method

.method public getCount()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getFooterItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    :goto_0
    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1    # I

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getFooterItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    if-nez p1, :cond_1

    const/4 v3, 0x6

    :goto_1
    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->isMoreDataAvailable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p1, v3, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p1, v3, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    add-int/lit8 v3, p1, -0x1

    invoke-super {p0, v3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialFooterHeader(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialFooterRow(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    return-void
.end method
