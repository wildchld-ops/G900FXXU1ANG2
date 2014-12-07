.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->openDocDetails(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field final synthetic val$accountForDetails:Ljava/lang/String;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$libraries:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$accountForDetails:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$libraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logClickEvent(I)V
    .locals 3
    .param p1    # I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private purchase()V
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$accountForDetails:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$libraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, v2, v3, v5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$700(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 4

    const/16 v2, 0xdc

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDocView:Lcom/google/android/finsky/activities/myapps/DocumentView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$500(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/DocumentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->onDataChanged()V

    return-void
.end method

.method public install()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xda

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xdd

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->purchase()V

    goto :goto_0
.end method

.method public launch()V
    .locals 3

    const/16 v0, 0xda

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public refund(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const/16 v0, 0xd6

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->refundDocument(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uninstall(ZZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    const/16 v0, 0xd7

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/finsky/utils/AppSupport;->showUninstallConfirmationDialog(Ljava/lang/String;Landroid/support/v4/app/Fragment;ZZZ)V

    return-void
.end method

.method public update()V
    .locals 1

    const/16 v0, 0xd9

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->purchase()V

    return-void
.end method

.method public viewDetails()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
