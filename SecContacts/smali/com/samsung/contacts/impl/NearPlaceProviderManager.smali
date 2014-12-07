.class public Lcom/samsung/contacts/impl/NearPlaceProviderManager;
.super Ljava/lang/Object;
.source "NearPlaceProviderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/preference/PreferenceGroup;

    return-void
.end method

.method public static getCountExceptCustomItem(ILcom/android/common/widget/CompositeCursorAdapter$Partition;ILandroid/database/Cursor;)I
    .locals 0
    .param p0    # I
    .param p1    # Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;

    return p2
.end method

.method public static getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/common/list/DirectoryPartition;
    .param p1    # I

    return p1
.end method

.method public static isCustomItem(ILcom/android/common/widget/CompositeCursorAdapter$Partition;Landroid/database/Cursor;Lcom/android/contacts/common/list/ContactListItemView;)Z
    .locals 1
    .param p0    # I
    .param p1    # Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v0, 0x0

    return v0
.end method

.method public static isKt114Partition(Lcom/android/contacts/common/list/DirectoryPartition;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v0, 0x0

    return v0
.end method

.method public static setDialogShowed(Z)V
    .locals 0
    .param p0    # Z

    return-void
.end method

.method public static setOptionViewVisibility(Landroid/content/Context;Lcom/android/contacts/common/list/DirectoryPartition;ILandroid/view/View;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/contacts/common/list/DirectoryPartition;
    .param p2    # I
    .param p3    # Landroid/view/View;

    return-void
.end method

.method public static setPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/preference/PreferenceGroup;

    return-void
.end method

.method public static setSearchViewFocusChangeListener(Landroid/content/Context;Landroid/widget/SearchView;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/widget/SearchView;

    return-void
.end method

.method public static setSearchViewQueryHint(Landroid/content/Context;Landroid/widget/SearchView;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/widget/SearchView;

    return-void
.end method

.method public static setSelectionFor114Service(Lcom/android/contacts/common/list/ContactEntryListAdapter;JLandroid/content/CursorLoader;)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .param p1    # J
    .param p3    # Landroid/content/CursorLoader;

    return-void
.end method

.method public static startLocationTrackingIfNeeded(Landroid/content/Context;Landroid/widget/SearchView;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/widget/SearchView;

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    return-void
.end method

.method public static stopLocationTracking(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    return-void
.end method
