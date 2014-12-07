.class Lcom/google/android/finsky/layout/YoutubeFrameView$1;
.super Ljava/lang/Object;
.source "YoutubeFrameView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/YoutubeFrameView;->showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

.field final synthetic val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field final synthetic val$youtubeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/YoutubeFrameView;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p3, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$youtubeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x78

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$youtubeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getClickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
