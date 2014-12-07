.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->createContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    const/16 v3, 0x6d

    # invokes: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->logMenuClickEvent(I)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$400(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Redeem chosen with no current account."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->createIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$5;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$500(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
