.class public Lcom/google/android/finsky/download/obb/ObbFactory;
.super Ljava/lang/Object;
.source "ObbFactory.java"


# static fields
.field private static sObbMasterDirectory:Ljava/io/File;


# direct methods
.method public static create(ZLjava/lang/String;ILjava/lang/String;JI)Lcom/google/android/finsky/download/obb/Obb;
    .locals 8

    new-instance v0, Lcom/google/android/finsky/download/obb/ObbImpl;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/download/obb/ObbImpl;-><init>(ZLjava/lang/String;ILjava/lang/String;JI)V

    return-object v0
.end method

.method public static getParentDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sObbMasterDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize()V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "Android"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "obb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sObbMasterDirectory:Ljava/io/File;

    return-void
.end method
