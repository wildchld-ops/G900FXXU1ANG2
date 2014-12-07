.class Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/WebViewChallengeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->checkUrlAndLog(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$100(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$000(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # getter for: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    invoke-static {v0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$200(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->onTargetUrlMatch(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$300(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # getter for: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    invoke-static {v0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$200(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # getter for: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    invoke-static {v0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$200(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$000(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # getter for: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mIsFirstPageLoad:Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$400(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # setter for: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mIsFirstPageLoad:Z
    invoke-static {v0, v2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$402(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Z)Z

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->checkUrlAndLog(Ljava/lang/String;)Z
    invoke-static {v1, p2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$100(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocked non-HTTPS resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/plain"

    const-string v3, "UTF-8"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->checkUrlAndLog(Ljava/lang/String;)Z
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$100(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;->this$0:Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->access$000(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
