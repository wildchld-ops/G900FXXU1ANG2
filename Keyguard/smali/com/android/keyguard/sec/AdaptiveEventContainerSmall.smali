.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "AdaptiveEventContainerSmall.java"


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field private mEmergencyView:Landroid/widget/LinearLayout;

.field private mPedoView:Landroid/widget/LinearLayout;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mWeatherView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate()V

    return-void
.end method

.method private handleEmergencyUpdate()V
    .locals 5

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handleEmergencyUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "emergencyEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 5

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handlePedoUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "pedoEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleWeatherUpdate()V
    .locals 5

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handleWeatherUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "weatherEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 13

    const/4 v12, -0x2

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_info"

    invoke-static {v10, v11, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_5

    move v1, v7

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v2

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_weather"

    invoke-static {v10, v11, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_6

    move v5, v7

    :goto_1
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_additional_steps"

    invoke-static {v10, v11, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_7

    move v4, v7

    :goto_2
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfoTrue()Z

    move-result v6

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_8

    move v0, v7

    :goto_3
    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kids_home_mode"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_9

    move v3, v7

    :goto_4
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const-string v7, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isWeatherVisible, isClockTop, mWeatherInfoTrue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherContainer()V

    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    :cond_4
    :goto_6
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void

    :cond_5
    move v1, v8

    goto/16 :goto_0

    :cond_6
    move v5, v8

    goto/16 :goto_1

    :cond_7
    move v4, v8

    goto/16 :goto_2

    :cond_8
    move v0, v8

    goto :goto_3

    :cond_9
    move v3, v8

    goto :goto_4

    :cond_a
    move v7, v9

    goto :goto_5

    :cond_b
    const-string v7, "AdaptiveEventContainerSmall"

    const-string v9, "mPedoView == null"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_d
    iget-object v7, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedoView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventContainerSmall(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    return-void
.end method

.method public updateAdaptiveContainer(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateEmergencyContainer()V
    .locals 3

    const/16 v2, 0x132e

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updateEmergencyContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updatePedoContainer()V
    .locals 3

    const/16 v2, 0x132f

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updateWeatherContainer()V
    .locals 3

    const/16 v2, 0x1330

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updateWeatherContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
