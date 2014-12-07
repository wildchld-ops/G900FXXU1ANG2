.class public abstract Lcom/google/android/finsky/config/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;,
        Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# instance fields
.field private final mKey:Ljava/lang/String;

.field private mOverride:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/config/GservicesValue$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/config/GservicesValue$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # [Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-void
.end method

.method public static partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/config/GservicesValue;->retrieve()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract retrieve()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
