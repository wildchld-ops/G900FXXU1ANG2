.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field private static final TAG:Ljava/lang/String; = "ScriptC"

.field static mCachePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/renderscript/RenderScript;

    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1    # Landroid/renderscript/RenderScript;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Loading of ScriptC script failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->setID(I)V

    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .locals 13
    .param p0    # Landroid/renderscript/RenderScript;
    .param p1    # Landroid/content/res/Resources;
    .param p2    # I

    const-class v10, Landroid/renderscript/ScriptC;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    const/16 v9, 0x400

    :try_start_1
    new-array v6, v9, [B

    const/4 v7, 0x0

    :goto_0
    array-length v9, v6

    sub-int v1, v9, v7

    if-nez v1, :cond_0

    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    array-length v9, v6

    sub-int v1, v9, v7

    :cond_0
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    if-nez v9, :cond_1

    new-instance v4, Ljava/io/File;

    sget-object v9, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    const-string v11, "com.android.renderscript.cache"

    invoke-direct {v4, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v9

    monitor-exit v10

    return v9

    :cond_2
    add-int/2addr v7, v2

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v3

    :try_start_5
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method
