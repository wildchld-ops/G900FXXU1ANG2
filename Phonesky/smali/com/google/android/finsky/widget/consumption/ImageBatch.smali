.class public Lcom/google/android/finsky/widget/consumption/ImageBatch;
.super Ljava/lang/Object;
.source "ImageBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;
    }
.end annotation


# instance fields
.field backendId:I

.field callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

.field urisToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;)V
    .locals 0
    .param p1    # I
    .param p3    # Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ">;",
            "Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->backendId:I

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->urisToLoad:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    iget v0, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch;->backendId:I

    iget v1, p0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->backendId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
