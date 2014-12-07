.class public final Lcom/google/android/gms/internal/cl;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/people/model/Person;


# static fields
.field public static final ms:[Ljava/lang/String;


# instance fields
.field private final df:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "qualified_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sort_key_irank"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "profile_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v_circle_ids"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "in_viewer_domain"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/cl;->ms:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/d;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/d;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/cl;->df:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBelongingCircleIds()[Ljava/lang/String;
    .locals 3

    const-string v0, "v_circle_ids"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ck;->mi:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ck;->mj:Ljava/util/regex/Pattern;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
