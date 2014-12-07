.class public final Lcom/google/android/gms/common/people/data/AudienceMember;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/a;


# instance fields
.field private final ac:I

.field private final f:I

.field private final fg:I

.field private final fh:Ljava/lang/String;

.field private final fi:Ljava/lang/String;

.field private final fj:Ljava/lang/String;

.field private final fk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/a;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:I

    iput p2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    iput p3, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    iput-object p4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fi:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fj:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fk:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static forCircle(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    const/4 v1, 0x1

    const/4 v2, -0x1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->fh:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fi:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->fi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fk:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fh:Ljava/lang/String;

    return-object v0
.end method

.method public getCircleType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fj:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleQualifiedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fi:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fi:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPerson()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonalCircle()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->ac:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->fg:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Person [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getPeopleQualifiedId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->isPersonalCircle()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Circle [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Group [%s] %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getCircleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/people/data/a;->a(Lcom/google/android/gms/common/people/data/AudienceMember;Landroid/os/Parcel;I)V

    return-void
.end method
