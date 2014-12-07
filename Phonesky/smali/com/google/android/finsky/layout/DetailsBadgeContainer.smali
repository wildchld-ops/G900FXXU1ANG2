.class public Lcom/google/android/finsky/layout/DetailsBadgeContainer;
.super Lcom/google/android/finsky/layout/SeparatorLinearLayout;
.source "DetailsBadgeContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;,
        Lcom/google/android/finsky/layout/DetailsBadgeContainer$ParcelableBadgeContainerData;
    }
.end annotation


# instance fields
.field private mBadgesContainer:Landroid/widget/LinearLayout;

.field private mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configure(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
    .locals 28
    .param p1    # Landroid/support/v4/app/FragmentManager;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->badge:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v13, v3

    if-nez v13, :cond_0

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->setVisibility(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v0, v11

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    aget-object v23, v11, v22

    move-object/from16 v0, v23

    iget v3, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    move-object/from16 v6, v23

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->title:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mBadgesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    add-int/lit8 v3, v13, 0x1

    div-int/lit8 v21, v3, 0x2

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    const v3, 0x7f04000d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mBadgesContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    :goto_3
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    move/from16 v0, v20

    if-ge v0, v13, :cond_2

    const v3, 0x7f04000e

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->badge:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v12, v3, v20

    const v3, 0x7f080029

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v3, 0x6

    move-object/from16 v0, v19

    invoke-static {v0, v12, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :goto_4
    const v3, 0x7f08002a

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->title:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mBadgesContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    :cond_6
    new-instance v3, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;-><init>(Lcom/google/android/finsky/layout/DetailsBadgeContainer;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->onFinishInflate()V

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->mBadgesContainer:Landroid/widget/LinearLayout;

    return-void
.end method
