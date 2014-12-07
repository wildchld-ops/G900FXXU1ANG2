.class Lcom/google/android/finsky/appstate/UpdateChecker$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/UpdateChecker;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$2;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker$2;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$500(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    return-void
.end method
