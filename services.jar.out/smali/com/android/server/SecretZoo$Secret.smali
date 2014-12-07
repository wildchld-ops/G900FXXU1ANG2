.class Lcom/android/server/SecretZoo$Secret;
.super Ljava/lang/Object;
.source "SecretZoo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecretZoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Secret"
.end annotation


# static fields
.field private static final PATH_CIPHER_TEXT:Ljava/lang/String; = "secret_ct"

.field private static final PATH_PLAIN_TEXT:Ljava/lang/String; = "secret_pt"

.field private static final PATH_TEXT_DIR:Ljava/lang/String; = "/data/system/users"


# instance fields
.field cipherText:Ljava/lang/String;

.field ctFile:Ljava/io/File;

.field public id:I

.field plainText:Ljava/lang/String;

.field ptFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/SecretZoo;


# direct methods
.method private constructor <init>(Lcom/android/server/SecretZoo;I)V
    .locals 3
    .param p2    # I

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/SecretZoo$Secret;->this$0:Lcom/android/server/SecretZoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/SecretZoo$Secret;->id:I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secret_pt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secret_ct"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SecretZoo;ILcom/android/server/SecretZoo$1;)V
    .locals 0
    .param p1    # Lcom/android/server/SecretZoo;
    .param p2    # I
    .param p3    # Lcom/android/server/SecretZoo$1;

    invoke-direct {p0, p1, p2}, Lcom/android/server/SecretZoo$Secret;-><init>(Lcom/android/server/SecretZoo;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SecretZoo$Secret;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Lcom/android/server/SecretZoo$Secret;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/SecretZoo$Secret;->store(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SecretZoo$Secret;)Z
    .locals 1
    .param p0    # Lcom/android/server/SecretZoo$Secret;

    invoke-direct {p0}, Lcom/android/server/SecretZoo$Secret;->load()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/SecretZoo$Secret;)Z
    .locals 1
    .param p0    # Lcom/android/server/SecretZoo$Secret;

    invoke-direct {p0}, Lcom/android/server/SecretZoo$Secret;->delete()Z

    move-result v0

    return v0
.end method

.method private delete()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    return v0
.end method

.method private isValid()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "SDP.SecretZoo"

    const-string/jumbo v2, "store :: invalid pt"

    invoke-static {v1, v2}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "SDP.SecretZoo"

    const-string/jumbo v2, "store :: invalid ct"

    invoke-static {v1, v2}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private load()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "SDP.SecretZoo"

    const-string/jumbo v1, "store :: files are not existing"

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/server/SecretZoo$Secret;->loadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/server/SecretZoo$Secret;->loadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/SecretZoo$Secret;->isValid()Z

    move-result v0

    goto :goto_0
.end method

.method private store(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/SecretZoo$Secret;->plainText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SecretZoo$Secret;->cipherText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/SecretZoo$Secret;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "SDP.SecretZoo"

    const-string/jumbo v1, "store :: files are existing"

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-direct {p0, v0, p1}, Lcom/android/server/SecretZoo$Secret;->storeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SDP.SecretZoo"

    const-string/jumbo v1, "store :: failed to store pt"

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ctFile:Ljava/io/File;

    invoke-direct {p0, v0, p2}, Lcom/android/server/SecretZoo$Secret;->storeText(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SDP.SecretZoo"

    const-string/jumbo v1, "store :: failed to store ct"

    invoke-static {v0, v1}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SecretZoo$Secret;->ptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private storeText(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "rw"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    const-string v6, "SDP.SecretZoo"

    const-string v7, "salt written."

    invoke-static {v6, v7}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_1
    move-object v3, v4

    :cond_2
    :goto_2
    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v6, "SDP.SecretZoo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v4

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v6, "SDP.SecretZoo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File I/O on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_5
    throw v5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public loadText(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1    # Ljava/io/File;

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "SDP.SecretZoo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "r"

    invoke-direct {v4, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v5, v7, [B

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v1, :cond_3

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    move-object v3, v4

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    :try_start_5
    const-string v7, "SDP.SecretZoo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File I/O on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/dar/log/SdpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    throw v6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method
