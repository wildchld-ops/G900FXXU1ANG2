.class public Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;
.super Ljava/io/IOException;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Sha1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSizeVerificationError"
.end annotation


# instance fields
.field public final actual:J

.field public final expected:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1    # J
    .param p3    # J

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-wide p1, p0, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;->expected:J

    iput-wide p3, p0, Lcom/google/android/finsky/utils/Sha1Util$FileSizeVerificationError;->actual:J

    return-void
.end method
