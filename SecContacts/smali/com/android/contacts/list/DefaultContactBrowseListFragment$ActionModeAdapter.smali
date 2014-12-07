.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;
.super Lcom/samsung/contacts/list/BaseActionModeAdapter;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/contacts/list/BaseActionModeAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mHasPhoneNumber:Z

.field private mIsUserProfile:Z

.field private mRestoreDirectorySearchMode:I

.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/app/Activity;
    .param p3    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/list/BaseActionModeAdapter;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private changeDeleteMenuVisiblity(IZLjava/lang/Long;)V
    .locals 2
    .param p1    # I
    .param p2    # Z
    .param p3    # Ljava/lang/Long;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isDeletableContact(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideDeleteMenu()Z

    move-result v1

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method private changeShareViaMenuVisibility(IZLjava/lang/Long;)V
    .locals 4
    .param p1    # I
    .param p2    # Z
    .param p3    # Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideShareViaMenu()Z

    move-result v2

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method private createLauncherShortcutWithContact(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$7000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    return-void
.end method

.method private shouldHideDeleteMenu()Z
    .locals 9

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v5

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_4

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_6
    add-int v5, v4, v3

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_7

    move v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v5

    if-ne v5, v6, :cond_9

    add-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v5, v7, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto/16 :goto_0
.end method

.method private toPrimitives(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private updateSelectedContactInfo()V
    .locals 8

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v6

    iput v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mCount:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mIsUserProfile:Z

    iput-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mHasPhoneNumber:Z

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mCount:I

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v6, v3, v0

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->hasPhoneNumber(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mHasPhoneNumber:Z

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->isUserProfile(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mIsUserProfile:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 47
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const-wide/16 v12, -0x1

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0394

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-object/from16 v46, v0

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static/range {v46 .. v46}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->size()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    move-object/from16 v0, v44

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const v3, 0x7f0e0395

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v7, 0x0

    const/16 v20, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v18, :cond_2

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v18, 0x1

    add-int/lit8 v20, v20, -0x1

    const/4 v7, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0393

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, -0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, -0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static/range {v2 .. v7}, Lcom/samsung/contacts/interactions/DeleteConfirmDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v16, Lcom/android/contacts/common/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v36

    const/16 v20, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v17

    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-static {v2, v0, v1}, Lcom/android/contacts/ContactsUtils;->getSharableOnly(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)Z

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_b

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v41

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    const/16 v34, 0x0

    :cond_8
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string v2, "profile"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v20, v20, 0x1

    const/16 v2, 0xfa

    move/from16 v0, v20

    if-lt v0, v2, :cond_8

    const/4 v8, 0x1

    :cond_9
    new-instance v37, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_6
    if-eqz v8, :cond_13

    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v44, 0x0

    const/16 v45, 0xfa

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v3, v44

    const/16 v44, 0x1

    const/16 v45, 0xfa

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v3, v44

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    :goto_7
    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v3, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;Landroid/content/Intent;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_a
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v41

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v34, 0x0

    const/16 v40, 0x0

    :cond_c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string v2, "profile"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v19, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/contacts/util/ContactLoaderUtils;->getPreAuthorizedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v34

    :goto_8
    add-int/lit8 v20, v20, 0x1

    const/16 v2, 0xbb8

    move/from16 v0, v20

    if-le v0, v2, :cond_c

    const/4 v8, 0x1

    :cond_d
    if-eqz v42, :cond_e

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    :cond_e
    if-eqz v19, :cond_10

    if-eqz v42, :cond_10

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v37, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vcard"

    const-string v3, "vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_10
    if-eqz v19, :cond_11

    new-instance v37, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "dummy"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string v46, "text/x-vcard"

    aput-object v46, v44, v45

    new-instance v45, Landroid/content/ClipData$Item;

    const-string v46, "dummy"

    invoke-direct/range {v45 .. v46}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v2, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v2, "vcard"

    const-string v3, "vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_11
    new-instance v37, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ClipData;

    const-string v3, "dummy"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string v46, "text/x-vcard"

    aput-object v46, v44, v45

    new-instance v45, Landroid/content/ClipData$Item;

    const-string v46, "dummy"

    invoke-direct/range {v45 .. v46}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v2, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v2, "vcard"

    const-string v3, "vcard"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v44, 0x0

    const/16 v45, 0xbb8

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v3, v44

    const/16 v44, 0x1

    const/16 v45, 0xbb8

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v3, v44

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e033f

    move-object/from16 v0, v37

    invoke-static {v2, v0, v3}, Lcom/samsung/contacts/util/ChooserUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v11

    const/high16 v2, 0x10000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v11}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_14
    new-instance v28, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.JOIN_CONTACT"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.contacts.action.CONTACT_ID"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x28

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->copyToDialingScreen(J)V
    invoke-static {v2, v12, v13}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;J)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v12, v13, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v10

    const-string v2, "personaIds"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v32

    if-eqz v32, :cond_17

    move-object/from16 v0, v32

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "MoveTo"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "target"

    const/4 v3, 0x0

    aget v3, v32, v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_17
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, v32

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/samsung/contacts/interactions/KnoxSelectionDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_9

    :sswitch_6
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "MoveTo"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "target"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "contact_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->toPrimitives(Ljava/util/ArrayList;)[J

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    new-instance v35, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SEND_INFO"

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "contactUri"

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x7

    move-object/from16 v0, v35

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x1

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(JZ)V
    invoke-static {v2, v12, v13, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;JZ)V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addToVipList(JZ)V
    invoke-static {v2, v12, v13, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;JZ)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080314 -> :sswitch_0
        0x7f080319 -> :sswitch_3
        0x7f080340 -> :sswitch_1
        0x7f080341 -> :sswitch_4
        0x7f08034a -> :sswitch_5
        0x7f08034b -> :sswitch_6
        0x7f08034c -> :sswitch_7
        0x7f08034d -> :sswitch_8
        0x7f08034e -> :sswitch_9
        0x7f08037b -> :sswitch_2
    .end sparse-switch
.end method

.method protected doCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerBezelListener()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showMultiSelectModeSearchView(ZZ)V
    invoke-static {v1, v4, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ZZ)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getDirectorySearchMode()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mRestoreDirectorySearchMode:I

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/16 v2, -0xd

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setMultiSelectionMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSelectedLookupKeys(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onCreateActionMode()V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsRecreatedInstance:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideShareViaMenu()Z

    move-result v2

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideDeleteMenu()Z

    move-result v2

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_0
.end method

.method protected doDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 6
    .param p1    # Landroid/view/ActionMode;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unRegisterBezelListener()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onDestroyActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showMultiSelectModeSearchView(ZZ)V
    invoke-static {v1, v4, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;ZZ)V

    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mRestoreDirectorySearchMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mRestoreDirectorySearchMode:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DefaultContactListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setMultiSelectionMode(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayCallButton(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setProfileHeader()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionModeAdapter:Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;
    invoke-static {v1, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1702(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iput-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v1, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1302(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected doPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 12
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v11, 0x7f0e0165

    const/4 v10, 0x6

    const v9, 0x7f080314

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    :goto_0
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCopyToDialer()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->updateSelectedContactInfo()V

    :cond_1
    const v5, 0x7f080341

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    :goto_1
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080319

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableCopyToDialer()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mHasPhoneNumber:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mIsUserProfile:Z

    if-nez v5, :cond_4

    move v5, v3

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f080340

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v3

    :goto_4
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034a

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034a

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_7

    move v5, v3

    :goto_5
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_6
    const v5, 0x7f08034c

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz v2, :cond_d

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v3

    :goto_7
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034d

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_e

    if-eqz v2, :cond_e

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mHasPhoneNumber:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mIsUserProfile:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    if-nez v5, :cond_e

    move v5, v3

    :goto_8
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034e

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMovetoKnoxMode:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v6

    if-nez v6, :cond_f

    if-eqz v2, :cond_f

    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mHasPhoneNumber:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mIsUserProfile:Z

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isEasyMode()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v6

    if-nez v6, :cond_f

    :goto_9
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    move v5, v4

    goto/16 :goto_1

    :cond_4
    move v5, v4

    goto/16 :goto_2

    :cond_5
    move v5, v4

    goto/16 :goto_3

    :cond_6
    move v5, v4

    goto/16 :goto_4

    :cond_7
    move v5, v4

    goto/16 :goto_5

    :cond_8
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034b

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034b

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v3

    :goto_a
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_9
    move v5, v4

    goto :goto_a

    :cond_a
    const v5, 0x7f08034a

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f08034b

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_b
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_c
    invoke-interface {p2, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_6

    :cond_d
    move v5, v4

    goto/16 :goto_7

    :cond_e
    move v5, v4

    goto/16 :goto_8

    :cond_f
    move v3, v4

    goto/16 :goto_9
.end method

.method public findAndSelectPosition(J)V
    .locals 8
    .param p1    # J

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v1

    cmp-long v5, v1, p1

    if-nez v5, :cond_1

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->onContactSelected(IJ)V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/contacts/common/list/AutoScrollListView;->requestPositionToScreen(IZ)V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchModeActionModeSelectedContactId:J

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected getListItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getValue(I)Ljava/lang/Long;
    .locals 4
    .param p1    # I

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->getValue(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    iget v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->mCount:I

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->updateSelectedContactInfo()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public onContactSelected(IJ)V
    .locals 5
    .param p1    # I
    .param p2    # J

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->changeShareViaMenuVisibility(IZLjava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->changeDeleteMenuVisiblity(IZLjava/lang/Long;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->updateActionBarTitle()V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->updateSelectAllState()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2402(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2502(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_6
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->changeShareViaMenuVisibility(IZLjava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v4, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->changeDeleteMenuVisiblity(IZLjava/lang/Long;)V

    goto/16 :goto_0
.end method

.method protected onDeselectAll()V
    .locals 7

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$5100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideShareViaMenu()Z

    move-result v6

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideDeleteMenu()Z

    move-result v6

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v6, 0x1

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_1
.end method

.method protected onSelectAll()V
    .locals 7

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4000(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isPreLoadContact(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2402(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedPreLoadContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSimContact(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2502(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedSimContacts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$4500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteOnlyMode:Z
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideShareViaMenu()Z

    move-result v6

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    :goto_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->shouldHideDeleteMenu()Z

    move-result v6

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideDeleteMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$3800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v6, 0x1

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v5, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1802(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    goto :goto_1
.end method

.method public shouldHideShareViaMenu()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$6700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/contacts/common/list/ContactListAdapter;->isSharableContact(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return v8

    :cond_1
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSelectedUris:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ActionModeAdapter;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/contacts/ContactsUtils;->hasSharableContact(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getBlockFormatMyProfile()Z

    move-result v6

    if-ne v6, v7, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/contacts/ContactsUtils;->isUndeletableProfile(J)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    move v6, v7

    :goto_3
    move v8, v6

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    :cond_6
    move v8, v7

    goto :goto_1
.end method
