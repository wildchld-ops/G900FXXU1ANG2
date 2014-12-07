.class Lcom/android/dialer/BackScrollManager$1$1;
.super Ljava/lang/Object;
.source "BackScrollManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/BackScrollManager$1;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/BackScrollManager$1;


# direct methods
.method constructor <init>(Lcom/android/dialer/BackScrollManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/BackScrollManager$1$1;->this$1:Lcom/android/dialer/BackScrollManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/BackScrollManager$1$1;->this$1:Lcom/android/dialer/BackScrollManager$1;

    iget-object v0, v0, Lcom/android/dialer/BackScrollManager$1;->this$0:Lcom/android/dialer/BackScrollManager;

    # getter for: Lcom/android/dialer/BackScrollManager;->mScrollState:I
    invoke-static {v0}, Lcom/android/dialer/BackScrollManager;->access$500(Lcom/android/dialer/BackScrollManager;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallDetailActivity"

    const-string v1, "mAdonScrollStateChangedapter notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/dialer/BackScrollManager;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {}, Lcom/android/dialer/BackScrollManager;->access$600()Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
