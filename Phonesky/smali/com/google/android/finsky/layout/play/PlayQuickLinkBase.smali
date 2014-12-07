.class public Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;
.super Lcom/google/android/play/layout/AccessibleRelativeLayout;
.source "PlayQuickLinkBase.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field protected mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

.field protected mLinkText:Landroid/widget/TextView;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSentImpression:Z

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/play/layout/AccessibleRelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mSentImpression:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/AccessibleRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mSentImpression:Z

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9

    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v6, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase$1;-><init>(Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/Browse$QuickLink;ILcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p6, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mSentImpression:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-boolean v8, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mSentImpression:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingTop()I

    move-result v5

    move v6, v4

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/FifeImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v7

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, v5, v7

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v1, v3, v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v6, v5, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v7, v4, v5, v8, v9}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v12, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/FifeImageView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingLeft()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingTop()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->getPaddingBottom()I

    move-result v11

    sub-int v0, v10, v11

    move v8, v2

    if-eqz v3, :cond_0

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v10, v0, v10

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v6, v10, v11

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10, v7, v7}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v6

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v8, v10

    :cond_0
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mLinkText:Landroid/widget/TextView;

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mAccessibilityOverlay:Landroid/view/View;

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v11, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v9, v4}, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public resetUiElementNode()V
    .locals 1

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayQuickLinkBase;->mSentImpression:Z

    return-void
.end method
