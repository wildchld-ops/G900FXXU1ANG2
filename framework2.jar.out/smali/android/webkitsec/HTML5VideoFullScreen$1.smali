.class Landroid/webkitsec/HTML5VideoFullScreen$1;
.super Landroid/os/Handler;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5VideoFullScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$1;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$1;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$1;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoFullScreen;->access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
