.class public Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;
.super Lcom/google/android/finsky/widget/TrampolineActivity;
.source "MyLibraryTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableMultiCorpus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish(ILjava/lang/String;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    invoke-static {p2}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "NowPlayingWidgetProvider.WarmWelcome"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "backendId"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 3
    .param p1    # I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->libraryName:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f0902d1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/widget/consumption/MyLibraryTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getDialogTitle()I
    .locals 1

    const v0, 0x7f0902d1

    return v0
.end method

.method protected isBackendEnabled(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
