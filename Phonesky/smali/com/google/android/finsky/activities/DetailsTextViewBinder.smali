.class public Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsTextViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;
    }
.end annotation


# instance fields
.field private mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

.field private mContentView:Landroid/widget/TextView;

.field private mDefaultMaxLines:I

.field private mExpansionState:I

.field private mFooterIcon:Landroid/widget/ImageView;

.field private mFullHeight:I

.field private mIsTranslated:Z

.field private mOriginalDescription:Ljava/lang/CharSequence;

.field private mShouldScrollWhenCollapsing:Z

.field private mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mTranslatedDescription:Ljava/lang/CharSequence;

.field private mTruncatedHeight:I

.field private mUrlSpanClicked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->updateDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->handleClick()V

    return-void
.end method

.method private collapseContent(Z)V
    .locals 8

    if-eqz p1, :cond_1

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_0
    instance-of v6, v3, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v6, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/google/android/finsky/layout/ObservableScrollView;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_3

    iget v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    sub-int v4, v6, v7

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->scrollBy(II)V

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v7, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showMoreIndicator()V

    const/4 v6, 0x1

    iput v6, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v6, v2, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_3
    sub-int v4, v0, v1

    goto :goto_1
.end method

.method private configureContent()V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$4;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_0
.end method

.method private expandContent()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    return-void
.end method

.method private handleClick()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->collapseContent(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->expandContent()V

    goto :goto_0
.end method

.method private selfishifyUrlSpans(Ljava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x0

    instance-of v8, p1, Landroid/text/Spannable;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, p1

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v10, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Ljava/lang/String;)V

    invoke-interface {v5, v8, v7, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private showLessIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showMoreIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateDescription()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslatedDescription:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    if-eqz v1, :cond_2

    const v1, 0x7f090185

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v1, v0}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mOriginalDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const v1, 0x7f090184

    goto :goto_1
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 5

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DetailsTextLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->selfishifyUrlSpans(Ljava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mOriginalDescription:Ljava/lang/CharSequence;

    if-eqz p6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translation_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v0, :cond_2

    if-eqz p5, :cond_5

    invoke-direct {p0, p5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->selfishifyUrlSpans(Ljava/lang/CharSequence;)V

    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslatedDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const v2, 0x7f090184

    new-instance v3, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;

    invoke-direct {v3, p0, p7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->updateDescription()V

    iput v4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I

    iput v4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I

    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p6, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    iget v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->showLessIndicator()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setMetricsListener(Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTranslateButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput p4, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    iput-boolean p5, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mShouldScrollWhenCollapsing:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translation_state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setDefaultMaxLines(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mDefaultMaxLines:I

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mContentLayout:Lcom/google/android/finsky/layout/DetailsTextLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setDefaultMaxLines(I)V

    :cond_0
    return-void
.end method
