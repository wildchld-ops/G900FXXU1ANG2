.class public Lcom/google/android/finsky/config/PreferenceFile;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;,
        Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mMode:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/finsky/config/PreferenceFile;->mMode:I

    return-void
.end method

.method public static commit(Landroid/content/SharedPreferences$Editor;)Z
    .locals 2
    .param p0    # Landroid/content/SharedPreferences$Editor;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    sput-object p0, Lcom/google/android/finsky/config/PreferenceFile;->sContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public open()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/google/android/finsky/config/PreferenceFile;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/config/PreferenceFile;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public prefixPreference(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$7;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public prefixPreference(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$8;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public prefixPreference(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$5;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public prefixPreference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$6;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$3;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$3;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$4;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$4;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$1;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile$2;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$2;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
