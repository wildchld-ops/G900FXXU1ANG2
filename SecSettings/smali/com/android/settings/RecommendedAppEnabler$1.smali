.class Lcom/android/settings/RecommendedAppEnabler$1;
.super Landroid/database/ContentObserver;
.source "RecommendedAppEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RecommendedAppEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendedAppEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendedAppEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RecommendedAppEnabler$1;->this$0:Lcom/android/settings/RecommendedAppEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/RecommendedAppEnabler$1;->this$0:Lcom/android/settings/RecommendedAppEnabler;

    # getter for: Lcom/android/settings/RecommendedAppEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppEnabler;->access$000(Lcom/android/settings/RecommendedAppEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "recommended_apps_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppEnabler$1;->this$0:Lcom/android/settings/RecommendedAppEnabler;

    # getter for: Lcom/android/settings/RecommendedAppEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppEnabler;->access$100(Lcom/android/settings/RecommendedAppEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
