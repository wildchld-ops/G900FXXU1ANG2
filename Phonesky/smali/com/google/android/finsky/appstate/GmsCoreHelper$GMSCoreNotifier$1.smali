.class Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;

.field final synthetic val$newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->this$0:Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, "Set autoupdate of %s to %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$reason:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;->val$newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    return-void
.end method
