.class public Lcom/samsung/contacts/speeddial/SpeedDialListFragment;
.super Landroid/app/Fragment;
.source "SpeedDialListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SPEED_DIAL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private SpinListener:Landroid/view/View$OnClickListener;

.field private isCtcDuos:Z

.field private isCtcSingle:Z

.field private mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

.field protected mContext:Landroid/content/Context;

.field private mIsRangeChange:Z

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListState:Landroid/os/Parcelable;

.field private mMaxCount:I

.field private mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

.field private mRootView:Landroid/view/View;

.field public mSpdialDataObserver:Landroid/database/ContentObserver;

.field private mSpdlRange:Landroid/widget/TextView;

.field private mSpeedDialList:Landroid/widget/ListView;

.field private mSpinLayout:Landroid/widget/RelativeLayout;

.field protected mSpinRange:I

.field private mStartNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    iput v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->isDisableVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isCtcDuos:Z

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->isDisableVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isCtcSingle:Z

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->SpinListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdialDataObserver:Landroid/database/ContentObserver;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdlRange:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->makedefaultList()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->makeSpdlList(Landroid/database/Cursor;)V

    return-void
.end method

.method private getSpeedDialListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
    .locals 6

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "spdl_idx"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "phone"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, ""

    aput-object v1, v4, v0

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    const v3, 0x7f030127

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0802d9
        0x7f080052
        0x7f0802dd
        0x7f0802df
    .end array-data
.end method

.method private isDisplayOrderPriMary()Z
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSpdlList(Landroid/database/Cursor;)V
    .locals 19

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v1, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v17, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_1
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "contact_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v7, v16

    :cond_3
    const-string v1, "photo_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const-string v1, "number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "display_name_alt"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isDisplayOrderPriMary()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v8, v9

    :cond_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "spdl_idx"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "raw_contact_id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contact_id"

    invoke-virtual {v11, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "photo_id"

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {v11, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    invoke-virtual {v11, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e03f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-int v1, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    sub-int v18, v1, v2

    if-ltz v18, :cond_0

    const/16 v1, 0x64

    move/from16 v0, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v1, v0, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private makedefaultList()V
    .locals 10

    const v9, 0x7f0e0223

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isCtcDuos:Z

    if-nez v5, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone2"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    :goto_0
    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    add-int/lit8 v5, v5, 0x64

    if-ge v1, v5, :cond_5

    iget v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    sub-int/2addr v5, v6

    add-int v4, v5, v1

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->getSpeedDialListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->setSpdlRange(I)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iput-boolean v7, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "spdl_idx"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v4, v8, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isCtcSingle:Z

    if-nez v5, :cond_4

    const-string v5, "name"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ""

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "name"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "phone"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v5}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->setDefaultAppPreloadedSpl()V

    iget-boolean v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->getSpeedDialListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-virtual {v5, v6}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->setSpdlRange(I)V

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iput-boolean v7, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z

    goto :goto_1
.end method


# virtual methods
.method protected deletespdl(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->getFromQuickContact()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

    invoke-virtual {v3, v6}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "spdl_idx"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "raw_contact_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "photo_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "name"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "phone"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    sub-int v2, p1, v3

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->startQuery()V

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-virtual {v3, v6}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->setFromQuickContact(Z)V

    :cond_2
    return-void
.end method

.method protected getMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    return v0
.end method

.method protected insertspdl(IJ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key_number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "speed_dial_data_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->isCtcSingle:Z

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListData:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdialDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_3
    const-string v0, "SPDL_RANGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v4, 0x7f020162

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v2, 0x7f030126

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->getSpeedDialListAdapter()Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0802d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ExtendSpeedDialTo100"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mMaxCount:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0802d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0802d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0802d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdlRange:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->SpinListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdialDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdialDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdlRange:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v0, v0, 0x63

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v0, v0, 0x62

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mAdapter:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->setSpdlRange(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->startQuery()V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v0, v0, 0x63

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "SPDL_RANGE"

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected startQuery()V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_number >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND key_number < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mQueryHandler:Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;

    const/4 v1, 0x0

    const-string v3, "content://com.android.contacts/contacts/speeddial/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;

    const-string v7, "key_number ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
