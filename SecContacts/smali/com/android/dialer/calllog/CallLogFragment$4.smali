.class Lcom/android/dialer/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->onCallsFetched(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->setSwipePopupPref()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$400(Lcom/android/dialer/calllog/CallLogFragment;)V

    return-void
.end method
