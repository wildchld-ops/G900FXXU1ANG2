.class public Lcom/google/android/finsky/layout/LayoutSwitcher;
.super Ljava/lang/Object;
.source "LayoutSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;
    }
.end annotation


# instance fields
.field private final mContentLayout:Landroid/view/View;

.field private mDataLayoutId:I

.field private final mErrorLayoutId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLoadingLayoutId:I

.field private mMode:I

.field private volatile mPendingLoad:Z

.field private final mRetryListener:Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;

.field private final retryClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher$1;-><init>(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->retryClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z

    iput p2, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mDataLayoutId:I

    iput p3, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mErrorLayoutId:I

    iput p4, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mLoadingLayoutId:I

    iput-object p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mContentLayout:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mRetryListener:Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->resetMode()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher$1;-><init>(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->retryClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z

    iput p2, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mDataLayoutId:I

    iput p3, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mErrorLayoutId:I

    iput p4, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mLoadingLayoutId:I

    iput-object p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mContentLayout:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mRetryListener:Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;

    iput p6, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V
    .locals 6

    const v3, 0x7f080131

    const v4, 0x7f08006b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/LayoutSwitcher;)Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mRetryListener:Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/LayoutSwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z

    return v0
.end method

.method private performSwitch(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z

    iget v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "should be LOADING_MODE, ERROR_MODE, DATA_MODE, or BLANK_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setLoadingVisible(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setErrorVisible(ZLjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setDataVisible(Z)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setLoadingVisible(Z)V

    :goto_2
    :pswitch_4
    iput p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v2, p2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setErrorVisible(ZLjava/lang/String;)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setDataVisible(Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private resetMode()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setLoadingVisible(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setErrorVisible(ZLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->setDataVisible(Z)V

    return-void
.end method

.method private setDataVisible(Z)V
    .locals 3

    iget v1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mDataLayoutId:I

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mContentLayout:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mDataLayoutId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setErrorVisible(ZLjava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mContentLayout:Landroid/view/View;

    iget v4, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mErrorLayoutId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    const v3, 0x7f080054

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f080130

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->retryClickListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setLoadingVisible(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mContentLayout:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mLoadingLayoutId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method public isDataMode()Z
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchToBlankMode()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->performSwitch(ILjava/lang/String;)V

    return-void
.end method

.method public switchToDataMode()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->performSwitch(ILjava/lang/String;)V

    return-void
.end method

.method public switchToDataMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mDataLayoutId:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    return-void
.end method

.method public switchToErrorMode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->performSwitch(ILjava/lang/String;)V

    return-void
.end method

.method public switchToLoadingDelayed(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mPendingLoad:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/layout/LayoutSwitcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher$2;-><init>(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public switchToLoadingMode()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->performSwitch(ILjava/lang/String;)V

    return-void
.end method
