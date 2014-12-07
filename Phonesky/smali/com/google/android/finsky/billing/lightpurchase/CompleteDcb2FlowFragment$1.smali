.class Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;
.super Ljava/lang/Object;
.source "CompleteDcb2FlowFragment.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->fetchTocAndInitializeBilling(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    const-string v0, "TOC loaded."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->initializeBilling(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->access$000(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V

    return-void
.end method
