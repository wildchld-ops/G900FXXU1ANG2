.class public Lorg/keyczar/Crypter;
.super Lorg/keyczar/Encrypter;
.source "Crypter.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;


# instance fields
.field private final CRYPT_CACHE:Lorg/keyczar/StreamCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamCache",
            "<",
            "Lorg/keyczar/interfaces/DecryptingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/keyczar/Crypter;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Crypter;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 1
    .param p1    # Lorg/keyczar/interfaces/KeyczarReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/keyczar/Encrypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    return-void
.end method


# virtual methods
.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1
    .param p1    # Lorg/keyczar/enums/KeyPurpose;

    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
