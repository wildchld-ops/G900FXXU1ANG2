.class public Lcom/google/android/play/layout/PlayActionButton;
.super Landroid/widget/Button;
.source "PlayActionButton.java"


# instance fields
.field private mActionXPadding:I

.field private mDrawAsLabel:Z

.field private mIgnoreCorpusColor:Z

.field private mUseAllCapsInLabelMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/google/android/play/R$styleable;->PlayActionButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayActionButton;->mUseAllCapsInLabelMode:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayActionButton;->mIgnoreCorpusColor:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayActionButton;->mActionXPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public configure(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 9
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/view/View$OnClickListener;

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    iget-boolean v8, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/google/android/play/layout/PlayActionButton;->mUseAllCapsInLabelMode:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getPaddingBottom()I

    move-result v3

    if-eqz p3, :cond_2

    move v2, v7

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setFocusable(Z)V

    invoke-super {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setClickable(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v7, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/google/android/play/layout/PlayActionButton;->setBackgroundResource(I)V

    iget-boolean v7, p0, Lcom/google/android/play/layout/PlayActionButton;->mIgnoreCorpusColor:Z

    if-eqz v7, :cond_4

    move v0, v6

    :goto_3
    invoke-static {v1, v0}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPrimaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_4
    iget-boolean v7, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    if-eqz v7, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {p0, v5, v4, v5, v3}, Lcom/google/android/play/layout/PlayActionButton;->setPadding(IIII)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/android/play/layout/PlayActionButton;->setFocusable(Z)V

    const/4 v7, 0x0

    invoke-super {p0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Lcom/google/android/play/layout/PlayActionButton;->setClickable(Z)V

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_3

    :cond_5
    iget-boolean v7, p0, Lcom/google/android/play/layout/PlayActionButton;->mIgnoreCorpusColor:Z

    if-eqz v7, :cond_6

    sget v7, Lcom/google/android/play/R$drawable;->play_action_button_secondary:I

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/play/R$color;->play_fg_button_secondary:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setTextColor(I)V

    goto :goto_4

    :cond_6
    invoke-static {v1, p1}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPlayActionButtonBackgroundDrawable(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/play/R$color;->play_action_button_text:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PlayActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    iget v5, p0, Lcom/google/android/play/layout/PlayActionButton;->mActionXPadding:I

    goto :goto_5
.end method

.method public setDrawAsLabel(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/play/layout/PlayActionButton;->mDrawAsLabel:Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIgnoreCorpusColor(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayActionButton;->mIgnoreCorpusColor:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/play/layout/PlayActionButton;->mIgnoreCorpusColor:Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Landroid/view/View$OnClickListener;

    const-string v0, "Don\'t call PlayActionButton.setOnClickListener() directly"

    const-string v1, "PlayCommon"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PlayCommon"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Call PlayActionButton.configure()"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
