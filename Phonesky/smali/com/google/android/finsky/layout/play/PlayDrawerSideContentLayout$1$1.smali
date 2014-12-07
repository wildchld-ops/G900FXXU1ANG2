.class Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;
.super Ljava/lang/Object;
.source "PlayDrawerSideContentLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setNavigationMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$playDrawer:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->closeSideDrawer()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v3, v3, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-virtual {v1, v2, v4, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
