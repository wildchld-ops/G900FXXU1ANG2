.class public Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "InteractionRCSeListAdapter.java"


# static fields
.field public static final CONTACT_RCSE_BB:Landroid/net/Uri;

.field public static final CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mActionCode:I

.field public mExceptedRcsList:Ljava/lang/String;

.field private mGroupFilter:Z

.field private mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

.field private mSelectedContactHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.contacts/contacts/rcse_bb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/contacts_list/rcse_bb/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 8

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v6, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xf0

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    const/4 v1, 0x0

    const-string v6, " AND (_id NOT IN (\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    const-string v7, ";"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_6

    :cond_5
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-ne v6, v7, :cond_7

    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_8

    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sec_custom_dormant_contact==0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_9

    const-string v6, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x126

    if-ne v6, v7, :cond_2

    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id not in (Select contact_id from emergency, view_data where default_emergency=3 and phone_data_id is not null and view_data._id=phone_data_id)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_2
    const-string v6, "starred==1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_a

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_b

    :cond_a
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_c

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_d

    :cond_c
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_2

    const-string v6, " AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    const-string v6, "has_phone_number=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    const-string v6, "in_visible_group=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, " AND has_phone_number=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xa0

    if-eq v6, v7, :cond_e

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x118

    if-ne v6, v7, :cond_f

    :cond_e
    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_10

    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_11

    :cond_10
    const-string v6, "has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_11
    iget v6, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v7, 0x96

    if-ne v6, v7, :cond_2

    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_6
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : contact_phone_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : contact_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "has_email>0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_8
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : favorite_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "has_email>0 and starred!=0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_9
    const-string v6, "InteractionContactListAdapter"

    const-string v7, "configureSelection : favorite_phone_email"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'))"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    instance-of v6, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSelectionForProfile(Ljava/lang/String;)V

    check-cast p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setSelectionArgsForProfile([Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isSelectedItem(ILandroid/database/Cursor;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    check-cast v2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p4, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/common/list/ContactListItemView;)V

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isSelectionVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isMultiSelectEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isSelectedItem(ILandroid/database/Cursor;)Z

    move-result v1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->hideCheckBox(Lcom/android/contacts/common/list/ContactListItemView;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    int-to-long v5, p2

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isEasAccountPartition(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindGalPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->bindCheckBox(Lcom/android/contacts/common/list/ContactListItemView;Z)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v4, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB_FILTER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_0

    :cond_6
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v1, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->CONTACT_RCSE_BB:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mGroupFilter:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mGroupInfo:Lcom/samsung/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/samsung/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz p4, :cond_3

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v2, :cond_2

    const-string v2, "account_name"

    iget-object v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "account_type"

    iget-object v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_3
    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "for_export_only"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mActionCode:I

    return-void
.end method

.method public setExceptedList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mExceptedRcsList:Ljava/lang/String;

    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionRCSeListAdapter;->mSelectedContactHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
