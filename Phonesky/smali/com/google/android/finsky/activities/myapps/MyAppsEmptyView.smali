.class public Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;
.super Landroid/widget/ScrollView;
.source "MyAppsEmptyView.java"


# instance fields
.field mAccountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;

.field mAppBrowsing:Landroid/view/View;

.field mDescriptionView:Landroid/widget/TextView;

.field mGamesBrowsing:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/AuthenticatedActivity;ZI)V
    .locals 5

    const/16 v4, 0x8

    if-eqz p4, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAccountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure()V

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(I)V

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAppBrowsing:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget-object v2, Lcom/google/android/finsky/config/G;->gamesBrowseUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mGamesBrowsing:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAccountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/AccountSelectorView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAppBrowsing:Landroid/view/View;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;

    invoke-direct {v3, p0, p2, v0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/Toc$CorpusMetadata;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mGamesBrowsing:Landroid/view/View;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$2;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAccountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;

    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mDescriptionView:Landroid/widget/TextView;

    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mAppBrowsing:Landroid/view/View;

    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->mGamesBrowsing:Landroid/view/View;

    return-void
.end method
