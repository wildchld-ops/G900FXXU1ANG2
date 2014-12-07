.class final Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)I
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$000()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/finsky/api/model/Document;

    check-cast p2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;->compare(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)I

    move-result v0

    return v0
.end method
