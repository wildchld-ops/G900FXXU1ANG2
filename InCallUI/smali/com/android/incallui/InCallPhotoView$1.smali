.class Lcom/android/incallui/InCallPhotoView$1;
.super Landroid/os/Handler;
.source "InCallPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPhotoView;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPhotoView$1;->this$0:Lcom/android/incallui/InCallPhotoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "InCallPhotoView"

    const-string v1, "MSG_UPDATE_PHOTO"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView$1;->this$0:Lcom/android/incallui/InCallPhotoView;

    # getter for: Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/incallui/InCallPhotoView;->access$000(Lcom/android/incallui/InCallPhotoView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView$1;->this$0:Lcom/android/incallui/InCallPhotoView;

    # invokes: Lcom/android/incallui/InCallPhotoView;->ApplyBlurEffect()V
    invoke-static {v0}, Lcom/android/incallui/InCallPhotoView;->access$100(Lcom/android/incallui/InCallPhotoView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView$1;->this$0:Lcom/android/incallui/InCallPhotoView;

    # invokes: Lcom/android/incallui/InCallPhotoView;->ApplyHighQualityPhoto()V
    invoke-static {v0}, Lcom/android/incallui/InCallPhotoView;->access$200(Lcom/android/incallui/InCallPhotoView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
