.class Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged scrollState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    # setter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mScrollState:I
    invoke-static {v0, p2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$702(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;I)I

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;->this$1:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->setScrollState(I)V

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1$1;-><init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
