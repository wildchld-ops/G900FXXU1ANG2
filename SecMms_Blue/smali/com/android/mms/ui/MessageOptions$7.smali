.class final Lcom/android/mms/ui/MessageOptions$7;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->reportAsSpamKor(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mActivity:Landroid/app/Activity;

.field final synthetic val$mMsgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->reportAsSpam(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$7;->val$mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
