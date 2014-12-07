.class Lcom/google/android/finsky/FinskyApp$3;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$3;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    # getter for: Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->access$000()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->cleanupNlp(Lcom/google/android/finsky/FinskyApp;)V

    # getter for: Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->access$000()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/services/RestoreService;->recoverRestore(Landroid/content/Context;)V

    return-void
.end method
