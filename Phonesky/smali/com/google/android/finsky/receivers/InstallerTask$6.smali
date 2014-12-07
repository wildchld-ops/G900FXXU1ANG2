.class Lcom/google/android/finsky/receivers/InstallerTask$6;
.super Landroid/os/AsyncTask;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$downloadUri:Landroid/net/Uri;

.field final synthetic val$downloadUriString:Ljava/lang/String;

.field final synthetic val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUriString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 27
    .param p1    # [Ljava/lang/Void;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v10, Ljava/io/RandomAccessFile;

    new-instance v24, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v25, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v21

    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "cache-dir-executable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "Could not make executable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v24, 0x0

    if-eqz v10, :cond_0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    :cond_0
    :goto_0
    if-eqz v21, :cond_1

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11

    :cond_1
    :goto_1
    if-eqz v17, :cond_2

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12

    :cond_2
    :goto_2
    if-nez v11, :cond_3

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v9, v10

    :cond_4
    :goto_3
    return-object v24

    :catch_0
    move-exception v7

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-NameNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v24, 0x0

    if-eqz v9, :cond_5

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_4
    if-eqz v21, :cond_6

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_5
    if-eqz v17, :cond_7

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_7
    :goto_6
    if-nez v11, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/16 v24, 0x0

    if-eqz v9, :cond_8

    :try_start_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_8
    :goto_7
    if-eqz v21, :cond_9

    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_9
    :goto_8
    if-eqz v17, :cond_a

    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :cond_a
    :goto_9
    if-nez v11, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catch_2
    move-exception v8

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "patch-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const/16 v24, 0x0

    if-eqz v10, :cond_b

    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    :cond_b
    :goto_a
    if-eqz v21, :cond_c

    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    :cond_c
    :goto_b
    if-eqz v17, :cond_d

    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    :cond_d
    :goto_c
    if-nez v11, :cond_e

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_e
    move-object v9, v10

    goto/16 :goto_3

    :cond_f
    :try_start_13
    new-instance v15, Ljava/io/File;

    const-string v24, "patches"

    move-object/from16 v0, v24

    invoke-direct {v15, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_14

    const/4 v12, 0x1

    :goto_d
    if-nez v12, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v15, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    const/16 v24, 0x0

    if-eqz v10, :cond_10

    :try_start_14
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13

    :cond_10
    :goto_e
    if-eqz v21, :cond_11

    :try_start_15
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_14

    :cond_11
    :goto_f
    if-eqz v17, :cond_12

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    :cond_12
    :goto_10
    if-nez v11, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_13
    move-object v9, v10

    goto/16 :goto_3

    :cond_14
    const/4 v12, 0x0

    goto :goto_d

    :cond_15
    :try_start_17
    const-string v24, ".apk"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-nez v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-file-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    const/16 v24, 0x0

    if-eqz v10, :cond_16

    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    :cond_16
    :goto_11
    if-eqz v21, :cond_17

    :try_start_19
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    :cond_17
    :goto_12
    if-eqz v17, :cond_18

    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18

    :cond_18
    :goto_13
    if-nez v11, :cond_19

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_19
    move-object v9, v10

    goto/16 :goto_3

    :cond_1a
    :try_start_1b
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v13, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :try_start_1d
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1, v13, v14}, Lcom/google/android/finsky/installer/Gdiff;->patch(Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    :try_end_1d
    .catch Lcom/google/android/finsky/installer/Gdiff$FileFormatException; {:try_start_1d .. :try_end_1d} :catch_4
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    const/4 v11, 0x1

    if-eqz v10, :cond_1b

    :try_start_1e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c

    :cond_1b
    :goto_14
    if-eqz v21, :cond_1c

    :try_start_1f
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1d

    :cond_1c
    :goto_15
    if-eqz v18, :cond_1d

    :try_start_20
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1e

    :cond_1d
    :goto_16
    if-nez v11, :cond_1e

    if-eqz v16, :cond_1e

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_1e
    move-object/from16 v17, v18

    move-object v9, v10

    move-object/from16 v24, v16

    goto/16 :goto_3

    :catch_3
    move-exception v8

    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    const/16 v24, 0x0

    if-eqz v10, :cond_1f

    :try_start_22
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_19

    :cond_1f
    :goto_17
    if-eqz v21, :cond_20

    :try_start_23
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a

    :cond_20
    :goto_18
    if-eqz v17, :cond_21

    :try_start_24
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b

    :cond_21
    :goto_19
    if-nez v11, :cond_22

    if-eqz v16, :cond_22

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_22
    move-object v9, v10

    goto/16 :goto_3

    :catch_4
    move-exception v7

    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-FileFormatException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUriString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "my_downloads"

    const-string v25, "public_downloads"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    const-string v24, "Patch %s (content-type \'%s\') is not Gdiff, will install as APK"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v24, Ljava/io/File;

    const-string v25, ""

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    if-eqz v10, :cond_23

    :try_start_26
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1f

    :cond_23
    :goto_1a
    if-eqz v21, :cond_24

    :try_start_27
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_20

    :cond_24
    :goto_1b
    if-eqz v18, :cond_25

    :try_start_28
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_21

    :cond_25
    :goto_1c
    if-nez v11, :cond_26

    if-eqz v16, :cond_26

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_26
    move-object/from16 v17, v18

    move-object v9, v10

    goto/16 :goto_3

    :catch_5
    move-exception v7

    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    const/16 v24, 0x0

    if-eqz v10, :cond_27

    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_22

    :cond_27
    :goto_1d
    if-eqz v21, :cond_28

    :try_start_2b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_23

    :cond_28
    :goto_1e
    if-eqz v18, :cond_29

    :try_start_2c
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_24

    :cond_29
    :goto_1f
    if-nez v11, :cond_2a

    if-eqz v16, :cond_2a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_2a
    move-object/from16 v17, v18

    move-object v9, v10

    goto/16 :goto_3

    :catch_6
    move-exception v7

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    const/16 v24, 0x0

    if-eqz v10, :cond_2b

    :try_start_2e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_25

    :cond_2b
    :goto_20
    if-eqz v21, :cond_2c

    :try_start_2f
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_26

    :cond_2c
    :goto_21
    if-eqz v18, :cond_2d

    :try_start_30
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_27

    :cond_2d
    :goto_22
    if-nez v11, :cond_2e

    if-eqz v16, :cond_2e

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_2e
    move-object/from16 v17, v18

    move-object v9, v10

    goto/16 :goto_3

    :catchall_0
    move-exception v24

    :goto_23
    if-eqz v9, :cond_2f

    :try_start_31
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_28

    :cond_2f
    :goto_24
    if-eqz v21, :cond_30

    :try_start_32
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_29

    :cond_30
    :goto_25
    if-eqz v17, :cond_31

    :try_start_33
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_2a

    :cond_31
    :goto_26
    if-nez v11, :cond_32

    if-eqz v16, :cond_32

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_32
    throw v24

    :catch_7
    move-exception v25

    goto/16 :goto_4

    :catch_8
    move-exception v25

    goto/16 :goto_5

    :catch_9
    move-exception v25

    goto/16 :goto_6

    :catch_a
    move-exception v25

    goto/16 :goto_7

    :catch_b
    move-exception v25

    goto/16 :goto_8

    :catch_c
    move-exception v25

    goto/16 :goto_9

    :catch_d
    move-exception v25

    goto/16 :goto_a

    :catch_e
    move-exception v25

    goto/16 :goto_b

    :catch_f
    move-exception v25

    goto/16 :goto_c

    :catch_10
    move-exception v25

    goto/16 :goto_0

    :catch_11
    move-exception v25

    goto/16 :goto_1

    :catch_12
    move-exception v25

    goto/16 :goto_2

    :catch_13
    move-exception v25

    goto/16 :goto_e

    :catch_14
    move-exception v25

    goto/16 :goto_f

    :catch_15
    move-exception v25

    goto/16 :goto_10

    :catch_16
    move-exception v25

    goto/16 :goto_11

    :catch_17
    move-exception v25

    goto/16 :goto_12

    :catch_18
    move-exception v25

    goto/16 :goto_13

    :catch_19
    move-exception v25

    goto/16 :goto_17

    :catch_1a
    move-exception v25

    goto/16 :goto_18

    :catch_1b
    move-exception v25

    goto/16 :goto_19

    :catch_1c
    move-exception v24

    goto/16 :goto_14

    :catch_1d
    move-exception v24

    goto/16 :goto_15

    :catch_1e
    move-exception v24

    goto/16 :goto_16

    :catch_1f
    move-exception v25

    goto/16 :goto_1a

    :catch_20
    move-exception v25

    goto/16 :goto_1b

    :catch_21
    move-exception v25

    goto/16 :goto_1c

    :catch_22
    move-exception v25

    goto/16 :goto_1d

    :catch_23
    move-exception v25

    goto/16 :goto_1e

    :catch_24
    move-exception v25

    goto/16 :goto_1f

    :catch_25
    move-exception v25

    goto/16 :goto_20

    :catch_26
    move-exception v25

    goto/16 :goto_21

    :catch_27
    move-exception v25

    goto/16 :goto_22

    :catch_28
    move-exception v25

    goto :goto_24

    :catch_29
    move-exception v25

    goto :goto_25

    :catch_2a
    move-exception v25

    goto :goto_26

    :catchall_1
    move-exception v24

    move-object v9, v10

    goto/16 :goto_23

    :catchall_2
    move-exception v24

    move-object/from16 v17, v18

    move-object v9, v10

    goto/16 :goto_23
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$6;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 8
    .param p1    # Ljava/io/File;

    const/4 v3, 0x0

    const/16 v7, 0x3c

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V
    invoke-static {v0, v7, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1400(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1500(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1600(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x6c

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {v5}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v0, "Successfully applied patch to update %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v0, v7, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$6;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
