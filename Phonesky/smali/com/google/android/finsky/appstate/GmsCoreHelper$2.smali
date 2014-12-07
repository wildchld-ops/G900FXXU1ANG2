.class final Lcom/google/android/finsky/appstate/GmsCoreHelper$2;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/GmsCoreHelper;->installNlpCleanup(Lcom/google/android/finsky/download/Download;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZILjava/lang/String;)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const-string v0, "Installed Nlp Fixer"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffAfterInstall:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/16 v1, 0x6e

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$2;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->sNlpLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$400()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void

    :cond_0
    const-string v0, "Error installing Nlp fixer %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->nlpCleanupHoldoffUntilBoot:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/16 v1, 0x6f

    goto :goto_0
.end method
