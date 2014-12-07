.class public Lcom/google/android/finsky/adapters/QuickLinkHelper;
.super Ljava/lang/Object;
.source "QuickLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;
    }
.end annotation


# direct methods
.method public static getQuickLinksForStream(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    if-eqz v6, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v6, v3, v7}, Lcom/google/android/finsky/utils/PlayUtils;->getStreamQuickLinkColumnCount(Landroid/content/res/Resources;II)I

    move-result v2

    int-to-double v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    mul-int v6, v4, v2

    sub-int v5, v6, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    if-nez v6, :cond_2

    if-lez v5, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static getQuickLinksRow(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/ViewGroup;Landroid/view/ViewGroup;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View;
    .locals 26

    if-nez p7, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p6

    array-length v3, v0

    move/from16 v0, p8

    invoke-static {v3, v0}, Lcom/google/android/finsky/utils/IntMath;->ceil(II)I

    move-result v25

    add-int/lit8 v3, v25, -0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v20, v0

    mul-int v21, p7, p8

    const/16 v19, 0x0

    if-nez p4, :cond_3

    const v3, 0x7f04010d

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    const/16 v19, 0x1

    :cond_0
    if-eqz v19, :cond_7

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, p8

    if-ge v13, v0, :cond_7

    add-int v14, v21, v13

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    aget-object v3, p6, v14

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;
    invoke-static {v3}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    if-eqz v3, :cond_5

    const/16 v18, 0x1

    :goto_3
    if-eqz v18, :cond_6

    const v12, 0x7f04010c

    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, p8

    if-ge v13, v0, :cond_0

    add-int v14, v21, v13

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    aget-object v3, p6, v14

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;
    invoke-static {v3}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v3

    iget-boolean v0, v3, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    move/from16 v18, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v15, v3, Lcom/google/android/finsky/layout/play/PlayQuickLinkPrism;

    move/from16 v0, v18

    if-eq v0, v15, :cond_4

    const/16 v19, 0x1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    const v12, 0x7f04010b

    goto :goto_4

    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v3, 0x7f0b006b

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v3, 0x7f0b006c

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v13, 0x0

    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v13, v3, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->resetUiElementNode()V

    add-int v14, v21, v13

    move/from16 v0, v20

    if-lt v14, v0, :cond_8

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->setVisibility(I)V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->setVisibility(I)V

    aget-object v22, p6, v14

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mQuickLink:Lcom/google/android/finsky/protos/Browse$QuickLink;
    invoke-static/range {v22 .. v22}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$000(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v3

    # getter for: Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->mBackendId:I
    invoke-static/range {v22 .. v22}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;->access$100(Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;)I

    move-result v4

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->bind(Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_7

    :cond_9
    if-eqz v17, :cond_a

    move v11, v10

    :goto_8
    if-eqz v16, :cond_b

    move/from16 v24, v9

    :goto_9
    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1, v9, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p4

    :cond_a
    const/4 v11, 0x0

    goto :goto_8

    :cond_b
    const/16 v24, 0x0

    goto :goto_9
.end method
