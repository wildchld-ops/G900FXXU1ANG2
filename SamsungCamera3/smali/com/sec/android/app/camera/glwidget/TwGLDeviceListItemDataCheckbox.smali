.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDeviceListItemDataCheckbox.java"


# instance fields
.field public mChecked:Z

.field private mCheckedImage:Lcom/sec/android/glview/TwGLImage;

.field private mUncheckedImage:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFZ)V
    .locals 8
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # Z

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020045

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020044

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000

    div-float v6, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x40000000

    div-float v7, v0, v1

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iput-boolean p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFZ)V
    .locals 5
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020045

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020044

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iput-boolean p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    return v0
.end method

.method public refreshView()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method
