.class Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;->this$2:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;->this$2:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mScrollState:I
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$700(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "mAdonScrollStateChangedapter notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;->this$2:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
