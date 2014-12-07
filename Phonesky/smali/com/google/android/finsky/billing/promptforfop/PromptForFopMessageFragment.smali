.class public Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;
.super Lcom/google/android/finsky/fragments/LoggingFragment;
.source "PromptForFopMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PromptForFopMessageFragment.message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PromptForFopMessageFragment.playlog_ui_element_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected getPlayStoreUiElementType()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PromptForFopMessageFragment.playlog_ui_element_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment$Listener;

    if-eqz v0, :cond_0

    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->logClickEvent(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment$Listener;->onContinueClicked()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Parent activity expected to implement Listener interface."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v4, 0x7f040108

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f080164

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "PromptForFopMessageFragment.message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080077

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    const/4 v4, 0x3

    const v5, 0x7f09017d

    invoke-virtual {v0, v4, v5, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-object v3
.end method
