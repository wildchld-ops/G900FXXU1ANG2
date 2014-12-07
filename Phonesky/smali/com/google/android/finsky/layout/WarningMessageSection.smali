.class public Lcom/google/android/finsky/layout/WarningMessageSection;
.super Landroid/widget/TextView;
.source "WarningMessageSection.java"


# instance fields
.field private mAdjustedDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    return-void
.end method

.method private getAlternateAccountOwnerText(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/AccountLibrary;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/DfeToc;)Ljava/lang/String;
    .locals 9
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/library/AccountLibrary;
    .param p3    # Lcom/google/android/finsky/library/Libraries;
    .param p4    # Landroid/accounts/Account;
    .param p5    # Lcom/google/android/finsky/api/model/DfeToc;

    const v8, 0x7f090297

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    if-ne v4, v6, :cond_0

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/finsky/utils/LibraryUtils;->getFirstOwner(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1, p5, p3}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, p3}, Lcom/google/android/finsky/utils/LibraryUtils;->getFirstOwner(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V
    .locals 20
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/widget/ImageView;
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Lcom/google/android/finsky/library/Libraries;
    .param p5    # Landroid/accounts/Account;

    invoke-virtual/range {p4 .. p5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasWarningMessage()Z

    move-result v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/layout/WarningMessageSection;->getAlternateAccountOwnerText(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/AccountLibrary;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/DfeToc;)Ljava/lang/String;

    move-result-object v8

    if-eqz v18, :cond_1

    if-nez v14, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/WarningMessageSection;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/WarningMessageSection;->setVisibility(I)V

    if-nez v18, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(I)V

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v19, v12, v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    sub-int v2, v17, v11

    div-int/lit8 v10, v2, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v16, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/WarningMessageSection;->getPaddingLeft()I

    move-result v13

    add-int v2, v13, v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/google/android/finsky/layout/WarningMessageSection;->setPadding(IIII)V

    add-int v9, v10, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/layout/WarningMessageSection;->setCompoundDrawablePadding(I)V

    goto :goto_0

    :cond_2
    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getWarningMessage()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/WarningMessageSection;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/layout/WarningMessageSection;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/WarningMessageSection;->mAdjustedDrawable:Z

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method
