.class public Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;
.super Landroid/preference/PreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/SimChangeAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceArea"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "message_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    # setter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/settings/fmm/SimChangeAlert;->access$702(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea$1;-><init>(Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090070

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;
    invoke-static {}, Lcom/android/settings/fmm/SimChangeAlert;->access$700()Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
