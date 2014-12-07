.class Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;
.super Ljava/lang/Object;
.source "PlayDrawerSideContentLayout.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getPlusDocAndConfigureProfileInfoView(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$playDrawer:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

.field final synthetic val$profileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$playDrawer:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iput-object p3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$profileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    iget-object v4, p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;->partialUserProfile:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    # setter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3, v4}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$002(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;Lcom/google/android/finsky/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    iget-object v2, v3, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$1;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$profileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->configure(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$2;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V

    return-void
.end method
