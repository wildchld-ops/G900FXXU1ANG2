.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler;->onComplete(Lcom/google/android/finsky/download/Download;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field final synthetic val$download:Lcom/google/android/finsky/download/Download;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iput-object p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v7, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3$1;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3$1;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-interface {v0}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-string v9, ""

    move-object v4, v1

    move v6, v5

    move v8, v5

    move-object v10, v1

    invoke-static/range {v0 .. v10}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;)V

    return-void
.end method
