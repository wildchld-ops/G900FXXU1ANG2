.class public Lcom/android/keyguard/sec/ContextualEventContainer;
.super Landroid/widget/LinearLayout;
.source "ContextualEventContainer.java"


# instance fields
.field private mContextualEventArea:Landroid/view/ViewGroup;

.field private mIsSecure:Z

.field private mUnlockMessageArea:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualEventContainer;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventContainer;->handleUpdate()V

    return-void
.end method

.method private handleUpdate()V
    .locals 3

    const-string v1, "ContextualEventContainer"

    const-string v2, "handleUpdate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ContextualEventContainer"

    const-string v2, "topView == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->showGradation(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mIsSecure:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "ContextualEventContainer"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/ContextualEventManager;->setContextualEventContainer(Lcom/android/keyguard/sec/ContextualEventContainer;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventContainer;->update()V

    return-void
.end method

.method public setIsSecured(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mIsSecure:Z

    return-void
.end method

.method protected update()V
    .locals 3

    const/16 v2, 0x132f

    const-string v0, "ContextualEventContainer"

    const-string v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
