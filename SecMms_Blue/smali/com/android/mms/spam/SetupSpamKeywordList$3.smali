.class Lcom/android/mms/spam/SetupSpamKeywordList$3;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
