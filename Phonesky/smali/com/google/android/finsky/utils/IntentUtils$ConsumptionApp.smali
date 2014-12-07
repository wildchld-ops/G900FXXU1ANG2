.class abstract Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/IntentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ConsumptionApp"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/utils/IntentUtils$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/utils/IntentUtils$1;

    invoke-direct {p0}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;-><init>()V

    return-void
.end method

.method protected static final addAccountExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Intent;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected static final setDefaultFlags(Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public buildManageItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildViewCollectionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract buildViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
.end method
