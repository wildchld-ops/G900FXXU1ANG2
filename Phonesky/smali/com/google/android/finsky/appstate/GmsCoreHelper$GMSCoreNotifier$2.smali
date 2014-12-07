.class final Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$2;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->reconnectNlp(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "Result %d re-installing %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
