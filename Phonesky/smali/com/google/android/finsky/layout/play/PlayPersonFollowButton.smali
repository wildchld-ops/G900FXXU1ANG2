.class public Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
.super Landroid/widget/TextView;
.source "PlayPersonFollowButton.java"


# instance fields
.field private final mVisualStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/vending/R$styleable;->PlayPersonFollowButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->mVisualStyle:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 17
    .param p1    # Ljava/lang/String;
    .param p3    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_2

    const v2, 0x7f020020

    const v12, 0x7f07000a

    const v6, 0x7f020084

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getPaddingBottom()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v9, v7}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setTextColor(I)V

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/finsky/utils/GPlusUtils;->getCirclesString(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13, v14, v15}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090370

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->mVisualStyle:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const v2, 0x7f020022

    const v12, 0x7f07000a

    const v6, 0x7f020084

    goto :goto_1

    :cond_3
    const v2, 0x7f020024

    const v12, 0x7f070033

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_2
.end method
