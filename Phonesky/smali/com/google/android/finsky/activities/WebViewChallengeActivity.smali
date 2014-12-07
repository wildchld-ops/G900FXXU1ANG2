.class public Lcom/google/android/finsky/activities/WebViewChallengeActivity;
.super Landroid/app/Activity;
.source "WebViewChallengeActivity.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

.field private mIsFirstPageLoad:Z

.field private mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private final mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

.field private mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/WebViewChallengeActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity$1;-><init>(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mIsFirstPageLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->checkUrlAndLog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->onTargetUrlMatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mIsFirstPageLoad:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/activities/WebViewChallengeActivity;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/WebViewChallengeActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mIsFirstPageLoad:Z

    return p1
.end method

.method private cancel(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x10c

    iget-object v3, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEventWithClientCookie(ILcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->finish()V

    return-void
.end method

.method private checkUrlAndLog(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Detected non-HTTPS resource from host: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/16 v5, 0x1f8

    iput v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->host:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasHost:Z

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static createIntent(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;)Landroid/content/Intent;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/WebViewChallengeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backupTitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private onTargetUrlMatch(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v8, 0x1

    const-string v5, "Matched URL: %s"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;-><init>()V

    iput-object v2, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    iput-boolean v8, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v6, 0x10b

    iget-object v7, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v5, v6, v1, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEventWithClientCookie(ILcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "challenge_response"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->onNegativeButtonClick()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "challenge"

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iput-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-boolean v9, v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-object v7, v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->requestWindowFeature(I)Z

    :cond_0
    const v9, 0x7f040024

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->setContentView(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "authAccount"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-interface {v1, v9, p0, v13}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    invoke-interface {v1, v11}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    const v9, 0x7f080076

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v3, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonVisible(Z)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-boolean v9, v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-object v9, v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v1, v7}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const v9, 0x7f080074

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/google/android/finsky/activities/WebViewChallengeActivity$2;

    invoke-direct {v10, p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity$2;-><init>(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;

    invoke-direct {v10, p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity$3;-><init>(Lcom/google/android/finsky/activities/WebViewChallengeActivity;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    iget-object v6, v9, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    invoke-direct {v4}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;-><init>()V

    iput-object v5, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    iput-boolean v12, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    :cond_2
    new-instance v9, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v10, 0x13c

    invoke-direct {v9, v10, v13, v4, v13}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    if-nez p1, :cond_6

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v10, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "backupTitle"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/android/finsky/layout/ButtonBar;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    const-string v9, "webview_state"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v2}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_2
.end method

.method public onNegativeButtonClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->onNegativeButtonClick()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPositiveButtonClick()V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    const-string v1, "webview_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
