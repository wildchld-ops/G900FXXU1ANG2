.class public Lcom/android/vending/VendingBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "VendingBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, p3, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public static registerWithBackup(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_0
    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p5, p6}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "Backing up aid: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "vending"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;J)V

    const-string v11, "auto_update_enabled"

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    const-string v11, "update_over_wifi_only"

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    const-string v11, "auto_add_shortcuts"

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    const-string v11, "notify_updates"

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    const-string v11, "content-filter-level"

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v14, "Entered onRestore"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v11

    new-array v10, v11, [B

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14, v11}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Restoring key %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v14, "vending"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    const-string v14, "Restored aid: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Lcom/google/android/finsky/services/RestoreService;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v14, "auto_update_enabled"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v14, "auto_update_default"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v14, "update_over_wifi_only"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    :cond_4
    const-string v14, "auto_add_shortcuts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v14, "notify_updates"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v14, "content-filter-level"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "Skip restore auto-update - already set locally."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    if-eqz v8, :cond_9

    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_9
    if-nez v3, :cond_a

    const-string v14, "Restore completed, no Market aid was found"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const-string v14, "Finished onRestore"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    if-eqz v7, :cond_c

    sget-object v14, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    if-eqz v6, :cond_8

    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14, v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    new-instance v14, Lcom/android/vending/VendingBackupAgent$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/android/vending/VendingBackupAgent$1;-><init>(Lcom/android/vending/VendingBackupAgent;Lcom/google/android/finsky/appstate/AppStates;)V

    invoke-virtual {v5, v14}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
