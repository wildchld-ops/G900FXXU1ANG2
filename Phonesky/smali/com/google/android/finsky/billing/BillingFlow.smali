.class public abstract Lcom/google/android/finsky/billing/BillingFlow;
.super Ljava/lang/Object;
.source "BillingFlow.java"


# instance fields
.field protected final mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mFinished:Z

.field private final mListener:Lcom/google/android/finsky/billing/BillingFlowListener;

.field protected final mParameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/finsky/billing/BillingFlow;->mParameters:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iput-object p2, p0, Lcom/google/android/finsky/billing/BillingFlow;->mListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    return-void
.end method

.method private notifyError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingFlow;->mListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/finsky/billing/BillingFlowListener;->onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V

    return-void
.end method

.method private notifyFinished(ZLandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingFlow;->mListener:Lcom/google/android/finsky/billing/BillingFlowListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/BillingFlowListener;->onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public canGoBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/BillingFlow;->mFinished:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->notifyFinished(ZLandroid/os/Bundle;)V

    return-void
.end method

.method protected fail(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/BillingFlow;->mFinished:Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->notifyError(Ljava/lang/String;)V

    return-void
.end method

.method protected finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingFlow;->finish(Landroid/os/Bundle;)V

    return-void
.end method

.method protected finish(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/BillingFlow;->mFinished:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->notifyFinished(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    return-void
.end method

.method public abstract resumeFromSavedState(Landroid/os/Bundle;)V
.end method

.method public abstract saveState(Landroid/os/Bundle;)V
.end method

.method public abstract start()V
.end method
