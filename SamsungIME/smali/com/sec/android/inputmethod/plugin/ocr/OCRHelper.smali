.class public Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
.super Ljava/lang/Object;
.source "OCRHelper.java"

# interfaces
.implements Lcom/sec/android/inputmethod/plugin/IPlugIn;


# static fields
.field private static sInstance:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;


# instance fields
.field private mIsInstalled:Z

.field private mOCRPakcageName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.ocr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.ocrlite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.ocr3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->sInstance:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->sInstance:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->sInstance:Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    return-object v0
.end method


# virtual methods
.method public containsOCRPackageName(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getOCRPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getOCRPackageVersionNameList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mOCRPakcageName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public scanPackageInfo(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.ocr"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "scanPackageInfo - found OCR package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.ocrlite"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.ocr3"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    :catch_2
    move-exception v2

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    iput-object v8, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    :cond_0
    const-string v4, "SamsungIME"

    const-string v5, "scanPackageInfo - cannot find OCR package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->mIsInstalled:Z

    goto :goto_1
.end method
