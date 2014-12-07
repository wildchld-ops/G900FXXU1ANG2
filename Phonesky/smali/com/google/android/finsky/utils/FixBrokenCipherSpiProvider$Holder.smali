.class Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;
.super Ljava/lang/Object;
.source "FixBrokenCipherSpiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;->INSTANCE:Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider$Holder;->INSTANCE:Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;

    return-object v0
.end method
