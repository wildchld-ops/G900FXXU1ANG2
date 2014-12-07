.class public Lcom/android/server/ssrm/fgapps/LocationBundling;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "LocationBundling.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SSRMv2:LocationBundling"


# instance fields
.field private final mBlackListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundlingEnabled:Z

.field private mGmsVersionMatched:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 4

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "GMS_LOCATION_BUNDLING"

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/ssrm/fgapps/LocationBundling;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "SSRMv2:LocationBundling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUNDLING_POLICY_UPDATED: GMS_LOCATION_BUNDLING = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    sget-boolean v2, Lcom/android/server/ssrm/Feature;->GMS_BUNDLING:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "GMS_LOCATION_BUNDLING"

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/ssrm/fgapps/LocationBundling;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "SSRMv2:LocationBundling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUNDLING_POLICY_UPDATED: GMS_LOCATION_BUNDLING = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBundlingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onPolicyUpdated(ZLjava/lang/String;)V
    .locals 8
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mGmsVersionMatched:Z

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    const-string v5, "SSRMv2:LocationBundling"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ssrm/fgapps/LocationBundling;->mBlackListMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LocationBundling;->onFgAppChanged()V

    return-void
.end method
