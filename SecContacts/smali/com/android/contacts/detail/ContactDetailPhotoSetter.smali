.class public Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.super Lcom/android/contacts/util/ImageViewDrawableSetter;
.source "ContactDetailPhotoSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    return-void
.end method


# virtual methods
.method public setupContactPhoto(Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/samsung/contacts/widget/ContactPhotoView;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Lcom/samsung/contacts/widget/ContactPhotoView;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setResources(Landroid/content/res/Resources;)V

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([BJ)Landroid/graphics/Bitmap;

    return-void
.end method
