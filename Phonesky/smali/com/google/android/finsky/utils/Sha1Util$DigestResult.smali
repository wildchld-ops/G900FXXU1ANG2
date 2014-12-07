.class Lcom/google/android/finsky/utils/Sha1Util$DigestResult;
.super Ljava/lang/Object;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Sha1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigestResult"
.end annotation


# instance fields
.field public final byteCount:J

.field public final sha1HashBase64:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->byteCount:J

    iput-object p1, p0, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/android/finsky/utils/Sha1Util$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/Sha1Util$DigestResult;-><init>(Ljava/lang/String;J)V

    return-void
.end method
