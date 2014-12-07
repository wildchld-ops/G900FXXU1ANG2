.class public Lorg/keyczar/SignedSessionEncrypter;
.super Ljava/lang/Object;
.source "SignedSessionEncrypter.java"


# instance fields
.field private final encrypter:Lorg/keyczar/Encrypter;

.field private session:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/keyczar/SessionMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private final signer:Lorg/keyczar/Signer;


# direct methods
.method public constructor <init>(Lorg/keyczar/Encrypter;Lorg/keyczar/Signer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lorg/keyczar/SignedSessionEncrypter;->encrypter:Lorg/keyczar/Encrypter;

    iput-object p2, p0, Lorg/keyczar/SignedSessionEncrypter;->signer:Lorg/keyczar/Signer;

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    iget-object v4, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/keyczar/exceptions/KeyczarException;

    const-string v5, "Session not initialized."

    invoke-direct {v4, v5}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/keyczar/SessionMaterial;

    new-instance v1, Lorg/keyczar/ImportedKeyReader;

    invoke-virtual {v2}, Lorg/keyczar/SessionMaterial;->getKey()Lorg/keyczar/AesKey;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/keyczar/ImportedKeyReader;-><init>(Lorg/keyczar/AesKey;)V

    new-instance v3, Lorg/keyczar/Crypter;

    invoke-direct {v3, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    invoke-virtual {v3, p1}, Lorg/keyczar/Crypter;->encrypt([B)[B

    move-result-object v0

    iget-object v4, p0, Lorg/keyczar/SignedSessionEncrypter;->signer:Lorg/keyczar/Signer;

    invoke-virtual {v2}, Lorg/keyczar/SessionMaterial;->getNonce()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/keyczar/Signer;->attachedSign([B[B)[B

    move-result-object v4

    return-object v4
.end method

.method public newSession()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-virtual {v0}, Lorg/keyczar/DefaultKeyType;->getAcceptableSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/keyczar/SignedSessionEncrypter;->newSession(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newSession(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    sget-object v3, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-interface {v3, p1}, Lorg/keyczar/interfaces/KeyType;->isAcceptableSize(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/keyczar/exceptions/KeyczarException;

    const-string v5, "Unsupported key size requested for session"

    invoke-direct {v4, v5}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->generate(I)Lorg/keyczar/AesKey;

    move-result-object v0

    const/16 v4, 0x10

    new-array v1, v4, [B

    invoke-static {v1}, Lorg/keyczar/util/Util;->rand([B)V

    invoke-static {v1}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Lorg/keyczar/SessionMaterial;

    invoke-direct {v5, v0, v2}, Lorg/keyczar/SessionMaterial;-><init>(Lorg/keyczar/AesKey;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/keyczar/SignedSessionEncrypter;->encrypter:Lorg/keyczar/Encrypter;

    iget-object v4, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/keyczar/SessionMaterial;

    invoke-virtual {v4}, Lorg/keyczar/SessionMaterial;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/keyczar/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
