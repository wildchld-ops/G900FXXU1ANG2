.class public Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "LegacyPhoneNumberListAdapter.java"


# static fields
.field private static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2    # Landroid/database/Cursor;

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 1
    .param p1    # Landroid/content/CursorLoader;
    .param p2    # J

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
