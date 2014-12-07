.class Lcom/google/android/finsky/activities/MainActivity$7;
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

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/16 v2, 0x25

    const-string v3, "dialog.gaia_recovery_migration"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->launchGaiaRecoveryDialog(Landroid/content/res/Resources;Landroid/support/v4/app/FragmentManager;ILjava/lang/String;)V

    return-void
.end method
