.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 17

    new-instance v9, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v9}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v13, "ContactsIntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Called with action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_0
    :goto_0
    const-string v13, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9, v11}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v9

    :cond_2
    const-string v13, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_3
    const-string v13, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x11

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_4
    const-string v13, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_5
    const-string v13, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x28

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_6
    const-string v13, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x32

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_7
    const-string v13, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x14

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_8
    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_9
    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v13, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_b
    const-string v13, "vnd.android.cursor.dir/phone"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v13, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_d
    const-string v13, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v13, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/16 v13, 0x69

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_f
    const-string v13, "text/x-vcard"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xfa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v13, "intent.action.INTERACTION_TAB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "intent.action.INTERACTION_LIST"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "intent.action.INTERACTION_TOPMENU"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v9, v1}, Lcom/android/contacts/list/ContactsIntentResolver;->setSubphonebookIntent(Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v13, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v13, "alias.DialShortcut"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/16 v13, 0x78

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_13
    const-string v13, "alias.MessageShortcut"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/16 v13, 0x82

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v13, 0x6e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_15
    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_16
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_17
    const-string v13, "vnd.android.cursor.item/phone"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_18
    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_19
    const-string v13, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v13, "vnd.android.cursor.item/person"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1b
    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "hidecreatelabel"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    :goto_1
    const/16 v13, 0x50

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_1c
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_1

    :cond_1d
    const-string v13, "android.intent.action.SEARCH"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    const-string v13, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v13, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    const-string v13, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1f
    invoke-virtual {v9, v7}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_20
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_21

    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    :cond_21
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v13, "redirect_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "com.android.dialer.DialtactsActivity"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    const-string v13, "vnd.android.cursor.dir/calls"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    const/16 v13, 0x258

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_23
    if-eqz v4, :cond_0

    const-string v13, "tel"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1f4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_24
    if-eqz v4, :cond_25

    invoke-static {v4}, Lcom/samsung/contacts/util/SmartClipUtils;->isListSmartClip(Landroid/net/Uri;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/16 v13, 0xb4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_25
    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_26
    const-string v13, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_27

    const-string v13, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const-string v13, "originalRequest"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactsRequest;

    if-eqz v6, :cond_27

    invoke-virtual {v9, v6}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    :cond_27
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_28
    const-string v13, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v9, v4}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_29
    const-string v13, "com.samsung.contacts.action.FAVORITE_ADD"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    const/16 v13, 0x15e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_2a
    const-string v13, "intent.action.INTERACTION_ICE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    const/16 v13, 0x122

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    :cond_2b
    const-string v13, "com.samsung.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    const-string v13, "ContactsIntentResolver"

    const-string v14, "ACTION_GROUP_SELECT_MEMBER"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "ContactsIntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EXTRA_KEY_GROUP_SEND ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "groupSend"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x1e

    const-string v14, "groupSend"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_2c

    const-string v13, "ContactsIntentResolver"

    const-string v14, "ACTION_GROUP_SELECT_MEMBER EMAIL"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xa0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    const-string v13, "directSendIntent"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v13, "groupSend"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto/16 :goto_0

    :cond_2c
    const/16 v13, 0x1f

    const-string v14, "groupSend"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v13, v14, :cond_0

    const-string v13, "ContactsIntentResolver"

    const-string v14, "ACTION_GROUP_SELECT_MEMBER MESSAGE"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x96

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/16 v13, 0x1f

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    const-string v13, "directSendIntent"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v13, "groupSend"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto/16 :goto_0

    :cond_2d
    const-string v13, "intent.action.IMPORT_SIM_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    const/16 v13, 0x136

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const-string v13, "intent.action.IMPORT_SIM2_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    const/16 v13, 0x19a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v13, "intent.action.EXPORT_SIM_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    const/16 v13, 0x12c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string v13, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    const/16 v13, 0x190

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v13, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v13, "account_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    const-string v13, "intent.action.DELETE_SIM_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    const/16 v13, 0x15e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_32
    const-string v13, "android.intent.action.DIAL"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    const-string v13, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    :cond_33
    const/16 v13, 0x1f4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_34
    const-string v13, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    const/16 v13, 0x258

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_35
    const-string v13, "com.sec.android.contacts.action.ONE_HAND_MODE_ADD_CONTACT"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    const/16 v13, 0x2bc

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_36
    const-string v13, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    const/16 v13, 0x259

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_37
    const/16 v13, 0xb4

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    if-nez v2, :cond_38

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setKeepTabState(Z)V

    goto/16 :goto_0

    :cond_38
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public setSubphonebookIntent(Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0xaa

    const/16 v6, 0x96

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "email-phone-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v2, "directSendIntent"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v2, "groupSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    const-string v2, "additional2"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "rcs-only-multi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    :goto_0
    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChatVisible(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "show-chat-first"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChatFirstMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_1

    :cond_4
    const-string v2, "email-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xa0

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v2, "directSendIntent"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v2, "groupSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto :goto_1

    :cond_5
    const-string v2, "phone-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const-string v2, "directSendIntent"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setDirectSendIntentMode(Z)V

    const-string v2, "groupSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setGroupSendType(I)V

    goto :goto_1

    :cond_6
    const-string v2, "email-phone"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v6}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/16 v2, 0x16

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "phone"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p2, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const-string v2, "query"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "query"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    :cond_8
    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    :cond_9
    const-string v2, "email"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "email"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_a
    const-string v2, "query"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "email"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-virtual {p2, v1}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "namecard"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    const/16 v2, 0x17

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_1

    :cond_e
    const-string v2, "vcard-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0xf0

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_1

    :cond_f
    const-string v2, "vip-email"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x118

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v2, "maxRecipientCount"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_10

    move v2, v3

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_1

    :cond_10
    move v2, v4

    goto :goto_2

    :cond_11
    const-string v2, "settings-phone-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xbe

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setSelectedText(Z)V

    goto/16 :goto_1

    :cond_12
    const-string v2, "settings-group-title-multi"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xc3

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setSelectedText(Z)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setGroupSelectionMode(Z)V

    goto/16 :goto_1

    :cond_13
    const-string v2, "pick-multi-emergency-message"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x126

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_1

    :cond_14
    const-string v2, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x12d

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_1

    :cond_15
    const-string v2, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    const-string v5, "additional"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x12e

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_1

    :cond_16
    const/16 v2, 0xb4

    invoke-virtual {p2, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {p2, v4}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    if-nez p1, :cond_17

    :goto_3
    invoke-virtual {p2, v3}, Lcom/android/contacts/list/ContactsRequest;->setKeepTabState(Z)V

    goto/16 :goto_1

    :cond_17
    move v3, v4

    goto :goto_3
.end method
