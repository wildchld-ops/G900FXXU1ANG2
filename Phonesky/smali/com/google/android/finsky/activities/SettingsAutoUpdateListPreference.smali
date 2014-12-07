.class public Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;
.super Landroid/preference/ListPreference;
.source "SettingsAutoUpdateListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mDefaultValueIndex:I

.field private mListId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;

    iget v1, v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;->listId:I

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setListId(I)V

    iget v1, v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;->defaultValueIndex:I

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setDefaultValueIndex(I)V

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->mListId:I

    iput v2, v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;->listId:I

    iget v2, p0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->mDefaultValueIndex:I

    iput v2, v0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference$SavedState;->defaultValueIndex:I

    return-object v0
.end method

.method public setDefaultValueIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->mDefaultValueIndex:I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setValueIndex(I)V

    return-void
.end method

.method public setListId(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->mListId:I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setEntries(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SettingsAutoUpdateListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method
