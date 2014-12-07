.class public Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;
.super Ljava/security/Provider;
.source "FixBrokenCipherSpiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi;,
        Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "FixBrokenCipherSpiProvider"

    const-wide/high16 v1, 0x3ff0000000000000L

    const-string v3, "Workaround for bug in pre-ICS Harmony"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const-string v0, "Cipher.AES"

    const-class v1, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$FixBrokenCipherSpi$AES;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    :cond_0
    return-void
.end method

.method static synthetic access$100()[B
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method public static insertIfNeeded()V
    .locals 1

    # getter for: Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;->INSTANCE:Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;
    invoke-static {}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;->access$000()Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->poke()V

    return-void
.end method

.method private poke()V
    .locals 0

    return-void
.end method
