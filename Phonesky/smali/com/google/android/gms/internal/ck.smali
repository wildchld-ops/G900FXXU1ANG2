.class public Lcom/google/android/gms/internal/ck;
.super Ljava/lang/Object;


# static fields
.field public static final mg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final mh:Landroid/os/Handler;

.field public static final mi:[Ljava/lang/String;

.field public static final mj:Ljava/util/regex/Pattern;

.field public static final mk:Ljava/util/regex/Pattern;

.field public static final ml:Ljava/security/SecureRandom;

.field private static final mm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mq:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mr:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ck$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mg:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mh:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ck;->mi:[Ljava/lang/String;

    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ck;->mj:Ljava/util/regex/Pattern;

    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ck;->mk:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->ml:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/ck$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mm:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ck$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mn:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ck$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mo:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ck$5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mp:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ck$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mq:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ck$7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ck$7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ck;->mr:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/v;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "e:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Expecting qualified-id, not gaia-id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/v;->b(ZLjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
