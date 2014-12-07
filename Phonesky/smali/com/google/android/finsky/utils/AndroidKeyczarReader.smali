.class public Lcom/google/android/finsky/utils/AndroidKeyczarReader;
.super Ljava/lang/Object;
.source "AndroidKeyczarReader.java"

# interfaces
.implements Lorg/keyczar/interfaces/KeyczarReader;


# static fields
.field private static final CHARSET_UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mSubDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->mSubDirectory:Ljava/lang/String;

    return-void
.end method

.method private getFileContentAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x400

    new-array v0, v6, [C

    iget-object v6, p0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->getFullFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Lorg/keyczar/exceptions/KeyczarException;

    const-string v7, "Couldn\'t read Keyczar \'meta\' file from assets/"

    invoke-direct {v6, v7, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private getFullFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->mSubDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->mSubDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->getFileContentAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    const-string v0, "meta"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;->getFileContentAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
