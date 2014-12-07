.class public Lcom/samsung/contacts/list/SIMContactPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "SIMContactPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field protected mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mIsFakeQueryAtFristLoad:Z

.field private mListContentFrame:Landroid/view/View;

.field private mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectedContactsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private selectAllAtFirstLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mIsFakeQueryAtFristLoad:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/list/SIMContactPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/samsung/contacts/list/SIMContactPickerFragment;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private refreshSelectAllState()V
    .locals 6

    const-wide/16 v0, -0x1

    iget-object v4, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->updateSelectAll(Z)V

    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->updateSelectAll(Z)V

    goto :goto_1
.end method

.method private setDoneButton(I)V
    .locals 3
    .param p1    # I

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    invoke-interface {v1}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onAllDataDeleted()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onInteractionSelectionChanged(II)V

    :cond_1
    return-void

    :cond_2
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    invoke-interface {v1}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onOneDataInputed()V

    goto :goto_0
.end method

.method private showSearchProgress(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showSelectAllHeader(Z)V
    .locals 4
    .param p1    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802ba

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v3, 0x7f0802b9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateSelectAll(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === configureAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectionVisible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setEmptyListEnabled(Z)V

    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mActionCode:I

    const/16 v1, 0x136

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01ac

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment$1;-><init>(Lcom/samsung/contacts/list/SIMContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "SIMContactPickerFragment"

    const-string v2, " === createListAdapter() === "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/contacts/list/SIMContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/contacts/list/SIMContactListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setQuickContactEnabled(Z)V

    iget v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setActionCode(I)V

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/list/SIMContactListAdapter;->setSelectedLookupKeys(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public deselectAll()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/list/SIMContactListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v5, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === inflateView() === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f030121

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyTitleView:Landroid/widget/TextView;

    const v1, 0x7f0e01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    const v1, 0x7f0802b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListContentFrame:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    invoke-interface {v0}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onCancelAction()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCopyResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onCopyAction(Ljava/util/HashSet;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mActionCode:I

    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const v2, 0x7f030112

    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onCreateView === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->createCustomSearchbar()V

    return-void
.end method

.method public onDeleteResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;->onDeleteAction(Ljava/util/HashSet;)V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # J

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->deselectAll()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAll()V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/list/SIMContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onSelectedInfoChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->showSelectAllHeader(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->refreshSelectAllState()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDoneButton(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAllContacts()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->showSelectAllHeader(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === onSaveInstanceState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->setDoneButton(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->refreshSelectAllState()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "SIMContactPickerFragment"

    const-string v1, " === restoreSavedState === "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/list/SIMContactListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v5}, Lcom/samsung/contacts/list/SIMContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSelectedContactsList:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public selectAllContacts()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mIsFakeQueryAtFristLoad:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mIsFakeQueryAtFristLoad:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAll()V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;

    iput-object p1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method public setOnSIMContactPickerActionListener(Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;)V
    .locals 0
    .param p1    # Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    iput-object p1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListener:Lcom/samsung/contacts/listener/OnSIMContactPickerActionListener;

    return-void
.end method

.method public setSelectAllAtFirstLoad(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->selectAllAtFirstLoad:Z

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mUserProfileExists:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    sub-int/2addr v0, v2

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v3, 0x7f0e0381

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v1}, Lcom/samsung/contacts/list/SIMContactPickerFragment;->showSearchProgress(Z)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/list/SIMContactPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
