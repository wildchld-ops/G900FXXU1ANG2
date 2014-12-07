.class public Lcom/android/settings/favorite/FavoriteMenuList;
.super Landroid/preference/PreferenceActivity;
.source "FavoriteMenuList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isGridView:Z

.field private mActionBar:Landroid/app/ActionBar;

.field protected mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

.field protected mListView:Landroid/widget/ListView;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/favorite/FavoriteMenuList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    return-void
.end method


# virtual methods
.method public configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040060

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method

.method public displayGridView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public displayListView()V
    .locals 2

    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public getGridType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    const-string v4, "favoriteList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "favoriteList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-direct {v4, p0, p0, v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->updateState()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_gridui"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    iget-boolean v3, p0, Lcom/android/settings/favorite/FavoriteMenuList;->isGridView:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/favorite/FavoriteMenuList;->displayGridView(Ljava/util/ArrayList;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->configureActionBar()V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->displayListView()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$1;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$1;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f09174a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/favorite/FavoriteMenuList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/FavoriteMenuList$2;-><init>(Lcom/android/settings/favorite/FavoriteMenuList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceActivity$Header;
    .param p2    # I

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v1, :cond_0

    if-lt v0, v4, :cond_0

    const v2, 0x7f090021

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getChecked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v1, :cond_0

    if-lt v0, v4, :cond_0

    const v2, 0x7f090021

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->saveState()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b011a -> :sswitch_1
        0x7f0b011b -> :sswitch_2
    .end sparse-switch
.end method

.method public saveState()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v4, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateState()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
