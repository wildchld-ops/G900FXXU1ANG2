.class public Lcom/samsung/contacts/detail/JoinContactImageSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "JoinContactImageSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public setContactPhoto(Landroid/content/Context;[BLcom/samsung/contacts/widget/ContactPhotoView;J)V
    .locals 1

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Lcom/samsung/contacts/widget/ContactPhotoView;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setResources(Landroid/content/res/Resources;)V

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([BJ)Landroid/graphics/Bitmap;

    return-void
.end method
