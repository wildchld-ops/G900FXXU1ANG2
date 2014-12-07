.class public Lcom/google/android/finsky/services/ConsumptionAppDoc;
.super Ljava/lang/Object;
.source "ConsumptionAppDoc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDocId:Ljava/lang/String;

.field private final mImageUri:Landroid/net/Uri;

.field private final mLastUpdateTimeMs:J

.field private final mReason:Ljava/lang/String;

.field private final mViewIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/services/ConsumptionAppDoc$1;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mImageUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mLastUpdateTimeMs:J

    iput-object p5, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mDocId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mViewIntent:Landroid/content/Intent;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/content/Intent;Lcom/google/android/finsky/services/ConsumptionAppDoc$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/services/ConsumptionAppDoc;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Play.ImageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v0, "Play.Reason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v0, "Play.LastUpdateTimeMillis"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "Play.FinskyDocId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Play.ViewIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/services/ConsumptionAppDoc;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLastUpdateTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mLastUpdateTimeMs:J

    return-wide v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mViewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    const-string v1, "Doc %s, Image %s, Reason %s, Last update %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getDocId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getImageUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getReason()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mLastUpdateTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mDocId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/services/ConsumptionAppDoc;->mViewIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
