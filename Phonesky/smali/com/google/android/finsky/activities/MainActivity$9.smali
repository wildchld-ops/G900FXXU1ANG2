.class Lcom/google/android/finsky/activities/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$9;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "dialog.play_games_install_suggestion"

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/PlayGamesInstallHelper;->launchPlayGamesInstallDialog(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
