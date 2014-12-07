.class Lcom/google/android/finsky/providers/AppIconProvider$IconCache;
.super Lcom/google/android/finsky/utils/LruCache;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/AppIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/utils/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected bridge synthetic entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->entryEvicted(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method protected entryEvicted(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->destroy(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
