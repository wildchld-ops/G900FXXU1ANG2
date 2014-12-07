.class public Lcom/google/android/finsky/experiments/FinskyExperiments;
.super Ljava/lang/Object;
.source "FinskyExperiments.java"

# interfaces
.implements Lcom/google/android/finsky/experiments/Experiments;


# static fields
.field private static final sRecognizedExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

.field private final mEnabledExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledHeaderValue:Ljava/lang/String;

.field private mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

.field private mIsNewsstandEnabled:Ljava/lang/Boolean;

.field private mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

.field private mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

.field private mUnsupportedHeaderValue:Ljava/lang/String;

.field private mUseDefaultProfileInDrawer:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.use_default_profile_in_side_drawer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.show_buy_verb_in_button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_wallet_3d_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_wallet_corpus_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_lock_corpus_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_lock_3d_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_play_corpus_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_show_play_3d_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_button_blue_background"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_dialog_wide_button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.purchase_dialog_hide_play_logo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:update.show_update_all_prompt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.hide_sale_prices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop_ui_mode_radio_button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop_ui_mode_billing_profile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop_ui_mode_billing_profile_nested"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop_ui_mode_billing_profile_more_details"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.prompt_for_fop_ui_mode_billing_profile_not_now"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "nocache:enable_newsstand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:details.double_fetch_social_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.enable_post_purchase_xsell_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.enable_post_purchase_xsell_for_all_corpora"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUseDefaultProfileInDrawer:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsNewsstandEnabled:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mAccountName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->loadExperimentsFromDisk()V

    return-void
.end method

.method private loadExperimentsFromDisk()V
    .locals 5

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->experimentList:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v4, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/finsky/experiments/FinskyExperiments;->setExperimentsInternal(Ljava/util/Collection;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1
.end method

.method private setExperimentsInternal(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledHeaderValue:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUseDefaultProfileInDrawer:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsNewsstandEnabled:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

    new-instance v6, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-direct {v6}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;-><init>()V

    iput-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v6, Lcom/google/android/finsky/config/G;->additionalExperiments:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    sget-object v6, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v7, "android_group:eng.finsky.merchandising.staging"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android_group:eng.finsky.merchandising.staging"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/google/android/finsky/experiments/FinskyExperiments;->sRecognizedExperiments:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v7, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v7, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    :cond_5
    const-string v6, ","

    iget-object v7, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledHeaderValue:Ljava/lang/String;

    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getActiveExperiments()Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mActiveExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnabledExperimentsHeaderValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledHeaderValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnsupportedExperimentsHeaderValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasEnabledExperiments()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasUnsupportedExperiments()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUnsupportedHeaderValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHideSalesPricesExperimentEnabled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "cl:billing.hide_sale_prices"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsHideSalePricesExperimentEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNewsstandEnabled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsNewsstandEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "nocache:enable_newsstand"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsNewsstandEnabled:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsNewsstandEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPostPurchaseXsellAppsEnabled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.enable_post_purchase_xsell_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseAppsXsellEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPostPurchaseXsellEnabledForAllCorpora()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.enable_post_purchase_xsell_for_all_corpora"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mIsPostPurchaseXsellEnabledForAllCorpora:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExperiments(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->experimentList:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/experiments/FinskyExperiments;->setExperimentsInternal(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->experimentList:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized useDefaultProfileInDrawer()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUseDefaultProfileInDrawer:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mEnabledExperiments:Ljava/util/Set;

    const-string v1, "cl:ui.use_default_profile_in_side_drawer"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUseDefaultProfileInDrawer:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/experiments/FinskyExperiments;->mUseDefaultProfileInDrawer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
