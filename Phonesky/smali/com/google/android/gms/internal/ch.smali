.class public Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;


# static fields
.field public static final lA:Lcom/google/android/gms/internal/ch;


# instance fields
.field private lB:[Ljava/util/regex/Pattern;

.field private lC:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ch;->lA:Lcom/google/android/gms/internal/ch;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->lB:[Ljava/util/regex/Pattern;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->lC:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/v;->c(Z)V

    array-length v0, p1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/android/gms/internal/ch;->lB:[Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/google/android/gms/internal/ch;->lC:[Ljava/lang/String;

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->lB:[Ljava/util/regex/Pattern;

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "config.url_uncompress.patterns"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.url_uncompress.replacements"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ch;->a([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
