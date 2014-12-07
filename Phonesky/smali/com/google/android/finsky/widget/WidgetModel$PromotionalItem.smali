.class public Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;
.super Ljava/lang/Object;
.source "WidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/WidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotionalItem"
.end annotation


# instance fields
.field public final developer:Ljava/lang/String;

.field public final doc:Lcom/google/android/finsky/api/model/Document;

.field public final image:Landroid/graphics/Bitmap;

.field public final imageType:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->imageType:I

    iput-object p3, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    return-void
.end method
