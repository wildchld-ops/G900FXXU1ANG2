.class public Lcom/google/android/finsky/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    }
.end annotation


# static fields
.field private static final BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final GPLUS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$1;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$2;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$3;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$4;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$5;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$6;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$6;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->GPLUS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/pm/PackageManager;

    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createLaunchIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppLaunchIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewCollectionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppManageItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildManageItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0901d7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 3
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createAggregatedHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static createBrowseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_BROWSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backend_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "clear_back_stack"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "url"

    invoke-static {p1}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createCorpusIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {p2, p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.google.android.finsky.CORPUS_HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "title"

    iget-object v3, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "backend_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method public static createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/Intent;

    const-string v2, "authAccount"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/finsky/activities/MainActivity;

    const-string v3, "authAccount"

    invoke-static {p0, v2, v3, v0}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public static createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_1
    const-string v3, "Could not find receiver for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static createLaunchIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils;->createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v3, v3, v2}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static createMovieTrailerIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppTrailerPlaybackSupported(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.videos.intent.action.trailers.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.videos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.finsky.DETAILS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "force_fullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "finish_on_ended"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getBackendId(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "com.google.android.apps.books"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.videos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.apps.magazines"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "com.google.android.apps.plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getConsumptionApp(I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    .locals 3
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->GPLUS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getMinimumRequiredVideosAppVersion()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/config/G;->minimumVideosVersionCodePreHoneycomb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/finsky/config/G;->minimumVideosVersionCodeHoneycombPlus:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "com.google.android.music"

    goto :goto_0

    :pswitch_2
    const-string v0, "com.google.android.videos"

    goto :goto_0

    :pswitch_3
    const-string v0, "com.google.android.apps.books"

    goto :goto_0

    :pswitch_4
    const-string v0, "com.google.android.apps.magazines"

    goto :goto_0

    :pswitch_5
    const-string v0, "com.android.vending"

    goto :goto_0

    :pswitch_6
    const-string v0, "com.google.android.apps.plus"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/high16 v3, 0x10000

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0    # Landroid/content/pm/PackageManager;

    const-string v0, "com.google.android.apps.books"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z
    .locals 1
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isMagazinesAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isGPlusAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static isGPlusAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0    # Landroid/content/pm/PackageManager;

    const-string v0, "com.google.android.apps.plus"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isMagazinesAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p0    # Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "com.google.android.apps.magazines"

    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    const-string v5, "com.google.android.apps.magazines"

    invoke-interface {v2, v5}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v5, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    sget-object v2, Lcom/google/android/finsky/config/G;->firstNewsstandAppVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v5, v2, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    return v2

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private static isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0    # Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p0    # Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    const-string v2, "com.google.android.videos"

    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    const-string v3, "com.google.android.videos"

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    iget v0, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {}, Lcom/google/android/finsky/utils/IntentUtils;->getMinimumRequiredVideosAppVersion()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isVideosAppTrailerPlaybackSupported(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p0    # Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    const-string v1, "com.google.android.videos"

    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    const-string v3, "com.google.android.videos"

    invoke-interface {v1, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    iget v0, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    sget-object v1, Lcom/google/android/finsky/config/G;->videoAppTrailerPlaybackMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
