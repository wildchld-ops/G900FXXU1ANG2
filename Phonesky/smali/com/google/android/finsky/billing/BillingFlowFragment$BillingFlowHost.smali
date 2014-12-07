.class public interface abstract Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;
.super Ljava/lang/Object;
.source "BillingFlowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingFlowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingFlowHost"
.end annotation


# virtual methods
.method public abstract hideProgress()V
.end method

.method public abstract onFlowCanceled(Lcom/google/android/finsky/billing/BillingFlowFragment;)V
.end method

.method public abstract onFlowError(Lcom/google/android/finsky/billing/BillingFlowFragment;Ljava/lang/String;)V
.end method

.method public abstract onFlowFinished(Lcom/google/android/finsky/billing/BillingFlowFragment;Landroid/os/Bundle;)V
.end method

.method public abstract setHostTitle(I)V
.end method

.method public abstract showProgress(I)V
.end method
