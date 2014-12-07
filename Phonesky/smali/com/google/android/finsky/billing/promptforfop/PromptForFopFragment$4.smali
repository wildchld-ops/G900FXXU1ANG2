.class Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;
.super Ljava/lang/Object;
.source "PromptForFopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->addActionEntry(Landroid/view/ViewGroup;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    iput p2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;->this$0:Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;

    iget v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$4;->val$i:I

    # invokes: Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->selectItem(I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->access$600(Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;I)V

    return-void
.end method
