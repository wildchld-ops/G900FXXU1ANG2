.class Lcom/android/launcher2/LauncherApplication$2;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->updatePageCount()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->getScreenIndex()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$2;->this$0:Lcom/android/launcher2/LauncherApplication;

    # getter for: Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto :goto_0
.end method
