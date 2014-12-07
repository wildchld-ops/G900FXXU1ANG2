.class Lcom/google/android/finsky/receivers/InstallerTask$3;
.super Ljava/lang/Object;
.source "InstallerTask.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->val$uri:Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->releaseInstalledUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mShowCompletionNotifications:Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const/16 v1, 0x6f

    move v4, p2

    move-object v5, p3

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {v6}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    const/16 v2, 0x46

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)V

    return-void
.end method
