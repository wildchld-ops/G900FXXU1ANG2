.class final Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"

# interfaces
.implements Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageType(Lcom/google/android/finsky/api/model/Document;)I
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v0, 0x2

    return v0
.end method

.method public getImageUrl(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
