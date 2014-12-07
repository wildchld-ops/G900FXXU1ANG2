.class Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;
.super Ljava/lang/Object;
.source "GaiaAuthFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/GaiaAuthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # getter for: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$100(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x109

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # getter for: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->mNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    invoke-static {v3}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$000(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/GaiaAuthFragment$1;->this$0:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    # invokes: Lcom/google/android/finsky/fragments/GaiaAuthFragment;->verifyInput()V
    invoke-static {v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->access$200(Lcom/google/android/finsky/fragments/GaiaAuthFragment;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
