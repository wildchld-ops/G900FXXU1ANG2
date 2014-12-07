.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->makeMyCollectionAction(I)Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

.field final synthetic val$backendId:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iput p2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x67

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # invokes: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->logMenuClickEvent(I)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$400(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V

    iget v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;Z)V

    :goto_1
    return-void

    :pswitch_2
    const/16 v0, 0x6a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x69

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x68

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x6b

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$500(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$500(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->val$backendId:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$7;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$500(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
