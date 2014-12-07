.class Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$2;
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$2;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1$2;->this$1:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper;->showGPlusSignUpDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
