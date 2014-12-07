.class Lcom/google/android/finsky/activities/WebViewChallengeActivity$1;
.super Lcom/google/android/finsky/activities/FakeNavigationManager;
.source "WebViewChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/WebViewChallengeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$1;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public goUp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$1;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$000(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V

    return-void
.end method
