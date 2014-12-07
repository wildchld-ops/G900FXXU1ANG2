.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


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
.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mEmptyTitleView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mListContentFrame:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setFakeQueryModeEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/EmailAddressPickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/list/EmailAddressPickerFragment;

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/list/EmailAddressPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/list/EmailAddressPickerFragment;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/list/EmailAddressPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0    # Lcom/android/contacts/list/EmailAddressPickerFragment;

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    return-void
.end method

.method private showSearchProgress(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createCustomSearchbar()V
    .locals 6

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01ac

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/contacts/list/EmailAddressPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/EmailAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/EmailAddressPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0801da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyTitleView:Landroid/widget/TextView;

    const v2, 0x7f0e01b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mNoMatchView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mNoMatchView:Landroid/view/View;

    const v2, 0x7f0802b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContentFrame:Landroid/view/View;

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchProgress:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->createCustomSearchbar()V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mUserProfileExists:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v3, 0x7f0e0381

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->showSearchProgress(Z)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
