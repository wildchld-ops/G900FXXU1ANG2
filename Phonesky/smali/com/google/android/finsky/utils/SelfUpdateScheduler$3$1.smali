.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$3$1;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3$1;->this$1:Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZILjava/lang/String;)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3$1;->this$1:Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;

    iget-object v4, v4, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;->this$0:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    # getter for: Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {v4}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move v4, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method
