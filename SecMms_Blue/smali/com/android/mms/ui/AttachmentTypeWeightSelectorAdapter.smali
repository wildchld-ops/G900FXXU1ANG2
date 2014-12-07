.class public Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/16 v11, 0xa

    const v6, 0x7f0c00a8

    const v7, 0x7f020136

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_10

    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00a9

    const v7, 0x7f020131

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020139

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020139

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020139

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    const v7, 0x7f020132

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00ac

    const v7, 0x7f020130

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "com.sec.android.app.voicerecorder"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020137

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "com.sec.android.app.voicenote"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020137

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    const v6, 0x7f0c011f

    const v7, 0x7f020138

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "com.samsung.android.app.memo"

    const/16 v3, 0x8

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v4

    const v6, 0x7f0c0120

    const v7, 0x7f020135

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v3, 0xb

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v4

    const v6, 0x7f020135

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "com.sec.android.app.snotebook"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c019a

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v1, "com.samsung.android.snote"

    const/16 v3, 0xd

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v4

    const v6, 0x7f0c019a

    const v7, 0x7f020135

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScrapbook()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "com.samsung.android.app.pinboard"

    const/16 v3, 0x16

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v4

    const v6, 0x7f0c04d9

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v1, "com.samsung.android.app.pinboard"

    const/16 v3, 0x16

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v4

    const v6, 0x7f0c04d9

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    const-string v1, "com.android.calendar"

    const/4 v3, 0x7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v4

    if-eqz v10, :cond_f

    move-object v6, v10

    :goto_1
    const v7, 0x7f020138

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v1, "com.android.task"

    const/16 v3, 0x9

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v4

    const v6, 0x7f0c016e

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "com.google.android.apps.maps"

    const/16 v3, 0x15

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddMyLocation()J

    move-result-wide v4

    const v6, 0x7f0c0170

    const v7, 0x7f020134

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v1, "com.google.android.apps.maps"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016f

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBaiduMapLocation()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, "com.baidu.BaiduMap"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016f

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    const-string v1, "com.baidu.BaiduMap.samsung"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v4

    const v6, 0x7f0c016f

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v1, "com.android.contacts"

    const/4 v3, 0x6

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v4

    const v6, 0x7f0c011e

    const v7, 0x7f020133

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_e
    :goto_2
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_f
    const v0, 0x7f0c0196

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_10
    if-eq p2, v11, :cond_11

    const/16 v0, 0xb

    if-ne p2, v0, :cond_13

    :cond_11
    const-string v1, "com.sec.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v1, "com.cooliris.media"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v1, "com.android.gallery3d"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_12
    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v4

    const v6, 0x7f0c00a9

    const v7, 0x7f020131

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v1, "com.sec.android.app.myfiles"

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v4

    const v6, 0x7f0c00aa

    const v7, 0x7f020139

    move-object v0, p0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v4

    const v6, 0x7f0c00ab

    const v7, 0x7f020132

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto :goto_2

    :cond_13
    const/16 v0, 0xc

    if-ne p2, v0, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v4

    const v6, 0x7f0c00ac

    const v7, 0x7f020130

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v1, "com.sec.android.app.voicerecorder"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020137

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v1, "com.sec.android.app.voicenote"

    const/4 v3, 0x5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v4

    const v6, 0x7f0c00ad

    const v7, 0x7f020137

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_2

    :cond_15
    const/16 v0, 0xe

    if-ne p2, v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0c016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v6

    move v5, v11

    invoke-static/range {v2 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_2
.end method
