.class public Lcom/google/android/finsky/layout/ReviewReplyLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewReplyLayout.java"


# instance fields
.field private mIsExpanded:Z

.field mReplyHeader:Landroid/widget/TextView;

.field mReplyText:Landroid/widget/TextView;

.field mReplyToggle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ReviewReplyLayout;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/ReviewReplyLayout;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/ReviewReplyLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/ReviewReplyLayout;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showMoreIndicator()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/ReviewReplyLayout;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showLessIndicator()V

    return-void
.end method

.method private disableToggle()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private enableToggle()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mIsExpanded:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout$1;-><init>(Lcom/google/android/finsky/layout/ReviewReplyLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showLessIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showMoreIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080224

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v0, 0x7f080225

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyToggle:Landroid/widget/ImageView;

    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/protos/DocumentV2$Review;

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    if-nez v5, :cond_0

    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    if-eqz v5, :cond_2

    iget-wide v3, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    if-eqz v5, :cond_1

    iget-wide v5, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->enableToggle()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->showMoreIndicator()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v6, 0x7f0901bb

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v2, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyText:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->disableToggle()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v6, 0x7f0901b9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v2, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->disableToggle()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/ReviewReplyLayout;->mReplyHeader:Landroid/widget/TextView;

    const v6, 0x7f0901ba

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
