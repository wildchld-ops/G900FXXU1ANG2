.class Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;
.super Ljava/lang/Object;
.source "PromptForFopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    # getter for: Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;
    invoke-static {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->access$000(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$1;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    # invokes: Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->notifyListenerOnNoneSelected()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->access$100(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;)V

    return-void
.end method
