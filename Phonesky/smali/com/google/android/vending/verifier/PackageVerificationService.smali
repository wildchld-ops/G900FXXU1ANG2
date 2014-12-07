.class public Lcom/google/android/vending/verifier/PackageVerificationService;
.super Landroid/app/Service;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;,
        Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    }
.end annotation


# static fields
.field private static final IMPORTANT_FILES:[Ljava/lang/String;

.field private static sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;


# instance fields
.field private mLastStartId:I

.field private mVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "classes.dex"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AndroidManifest.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "resources.arsc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "META-INF/MANIFEST.MF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/vending/verifier/PackageVerificationService;->IMPORTANT_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100([Landroid/content/pm/Signature;)[[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getRawSignatures([Landroid/content/pm/Signature;)[[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/vending/verifier/PackageVerificationService;[[B[[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->rawSignaturesMatch([[B[[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/vending/verifier/PackageVerificationService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportResult(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V

    return-void
.end method

.method private cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method private cancelVerificationIntent(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v3, "Cancel active verification id=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final chooseRandom([II)[I
    .locals 6

    array-length v5, p0

    if-gt v5, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-array v0, p1, [I

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    array-length v4, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    sub-int v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int v2, v5, v1

    aget v5, p0, v2

    aput v5, v0, v1

    aget v5, p0, v1

    aput v5, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private destroyAllVerifications()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    :goto_0
    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    const-string v1, "Destroying orphaned verification id=%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p0, v0, v5}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportResult(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V

    invoke-direct {p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelDialog(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extendTimeout(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->platformAntiMalwareDialogDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    return-void
.end method

.method private findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;
    .locals 3

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getFileInfos(Ljava/io/File;)[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v31, 0x2

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v30, Ljava/util/zip/ZipInputStream;

    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v30 .. v31}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/16 v29, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v22 .. v22}, Lcom/google/android/vending/verifier/PackageVerificationService;->isImportantFile(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v31

    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    throw v31

    :cond_0
    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_1

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne v7, v4, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v21, v0

    new-array v11, v10, [I

    sub-int v31, v29, v10

    sub-int v31, v31, v20

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v12, v0, [[I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v31

    aput-object v21, v12, v31

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v31

    aput-object v11, v12, v31

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    aput-object v25, v12, v31

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v15, v0, [I

    new-instance v30, Ljava/util/zip/ZipInputStream;

    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v30 .. v31}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x0

    :goto_1
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v24, v15, v7

    aget-object v31, v12, v7

    aput v16, v31, v24

    aget v31, v15, v7

    add-int/lit8 v31, v31, 0x1

    aput v31, v15, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    const/16 v31, 0x14

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->chooseRandom([II)[I

    move-result-object v21

    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-static {v11, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->chooseRandom([II)[I

    move-result-object v11

    const/16 v31, 0xa

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->chooseRandom([II)[I

    move-result-object v25

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    array-length v0, v11

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    add-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/4 v8, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move-object/from16 v2, v26

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    add-int v8, v8, v31

    const/16 v31, 0x0

    array-length v0, v11

    move/from16 v32, v0

    move/from16 v0, v31

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-static {v11, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v11

    move/from16 v31, v0

    add-int v8, v8, v31

    const/16 v31, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move-object/from16 v2, v26

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->sort([I)V

    const/16 v18, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;

    move-object/from16 v17, v0

    new-instance v30, Ljava/util/zip/ZipInputStream;

    new-instance v31, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v30 .. v31}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v16, 0x0

    const/16 v27, 0x0

    move/from16 v28, v27

    move/from16 v19, v18

    :goto_2
    :try_start_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    add-int/lit8 v27, v28, 0x1

    :try_start_4
    aget v23, v26, v28

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v23

    if-gt v0, v1, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v13

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :catchall_1
    move-exception v31

    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    throw v31

    :cond_5
    :try_start_5
    invoke-static/range {v30 .. v30}, Lcom/google/android/vending/verifier/PackageVerificationService;->getSha256Hash(Ljava/io/InputStream;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v9

    add-int/lit8 v18, v19, 0x1

    :try_start_6
    new-instance v31, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v9}, Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;-><init>(Ljava/lang/String;[B)V

    aput-object v31, v17, v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v28, v27

    move/from16 v19, v18

    goto :goto_2

    :cond_6
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v17

    :catchall_2
    move-exception v31

    move/from16 v27, v28

    move/from16 v18, v19

    :goto_4
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipInputStream;->close()V

    throw v31

    :catchall_3
    move-exception v31

    move/from16 v18, v19

    goto :goto_4

    :catchall_4
    move-exception v31

    goto :goto_4
.end method

.method private getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->dataUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v10, "Null data for request id=%d"

    new-array v9, v9, [Ljava/lang/Object;

    iget v11, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    invoke-static {v10, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v8

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v10, "file"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "Unsupported scheme for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "Cannot find file for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Cannot read file for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_4

    const-string v10, "Cannot read archive for %s in request id=%d"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v10, "Exception reading %s in request id=%d %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v8

    iget v12, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    aput-object v1, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mPackageName:Ljava/lang/String;

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mVersion:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLength:J

    :try_start_1
    invoke-static {v3}, Lcom/google/android/vending/verifier/PackageVerificationService;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSha256:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10}, Lcom/google/android/vending/verifier/PackageVerificationService;->getRawSignatures([Landroid/content/pm/Signature;)[[B

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSignatures:[[B

    :try_start_2
    invoke-static {v3}, Lcom/google/android/vending/verifier/PackageVerificationService;->getFileInfos(Ljava/io/File;)[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;

    move-result-object v10

    iput-object v10, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mFileInfos:[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v6, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLabel:Ljava/lang/String;

    :cond_5
    move v8, v9

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v10, "Error while calculating sha256 for file=%s, error=%s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v2, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :catch_3
    move-exception v2

    const-string v10, "Error while getting information about apk contents for file=%s, error=%s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v2, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_4
    move-exception v2

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static getRawSignatures([Landroid/content/pm/Signature;)[[B
    .locals 3

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    array-length v2, p0

    new-array v1, v2, [[B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    check-cast v2, [[B

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method private static getSha256Hash(Ljava/io/File;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getSha256Hash(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static getSha256Hash(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v3, 0x4000

    new-array v0, v3, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    return-object v3
.end method

.method private handleVerificationIntent(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    invoke-direct {v0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;

    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    invoke-virtual {v1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->execute()V

    return-void
.end method

.method private static isImportantFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->IMPORTANT_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService;->IMPORTANT_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private rawSignaturesMatch([[B[[B)Z
    .locals 7

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v5}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    new-instance v6, Landroid/content/pm/Signature;

    invoke-direct {v6, v5}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public static registerDialog(ILandroid/app/Activity;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mDialog:Landroid/app/Activity;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget v0, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportResult(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->stopSelf(I)V

    :cond_0
    return-void
.end method

.method public static reportConsentDialog(IZ)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    const-string v2, "User consent %b for id=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-virtual {v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "package_verifier_user_consent"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    :cond_3
    iput v6, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, v3, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0
.end method

.method private reportResult(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;I)V
    .locals 4

    iget-boolean v1, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->fromVerificationActivity:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    iget-object v0, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originalIntent:Landroid/content/Intent;

    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/PackageVerificationService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportVerificationResult(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static reportUserChoice(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    const-string v3, "User selected %d for id=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v3, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->findVerification(I)Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne p1, v2, :cond_3

    :goto_1
    iget-object v2, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mToken:[B

    new-instance v3, Lcom/google/android/vending/verifier/PackageVerificationService$1;

    invoke-direct {v3, v1}, Lcom/google/android/vending/verifier/PackageVerificationService$1;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    invoke-static {v0, v2, v3}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->reportUserDecision(I[BLcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    :cond_2
    iput p1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    sget-object v2, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    sget-object v3, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v2, v3, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private reportVerificationResult(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    return-void
.end method

.method private static resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not resolve host %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Could not resolve host %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSha256:[B

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mLength:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mVersion:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSignatures:[[B

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mFileInfos:[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingIp:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->referrerIp:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingPackageNames:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingSignatures:[[B

    new-instance v19, Lcom/google/android/vending/verifier/PackageVerificationService$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/verifier/PackageVerificationService$2;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    new-instance v20, Lcom/google/android/vending/verifier/PackageVerificationService$3;

    invoke-direct/range {v20 .. v22}, Lcom/google/android/vending/verifier/PackageVerificationService$3;-><init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    invoke-static/range {v3 .. v20}, Lcom/google/android/vending/verifier/api/PackageVerificationApi;->verifyApp([BJLjava/lang/String;Ljava/lang/Integer;[[B[Lcom/google/android/vending/verifier/api/PackageVerificationApi$FileInfo;Landroid/net/Uri;Landroid/net/Uri;Ljava/net/InetAddress;Ljava/net/InetAddress;[Ljava/lang/String;[[BLjava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "broadcast_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->destroyAllVerifications()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/vending/verifier/PackageVerificationService;->sInstance:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v2, "broadcast_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->handleVerificationIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    iput p3, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService;->mLastStartId:I

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->stopSelf(I)V

    :cond_2
    const/4 v2, 0x3

    return v2

    :cond_3
    const-string v2, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->cancelVerificationIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
