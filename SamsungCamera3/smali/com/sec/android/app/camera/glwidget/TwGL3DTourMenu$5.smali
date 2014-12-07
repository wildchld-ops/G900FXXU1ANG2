.class Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;
.super Ljava/lang/Object;
.source "TwGL3DTourMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->startImageAlignmentThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4002(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlignRun: Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThread:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4200(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  State "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4100(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_0

    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RUN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4008(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    const-string v2, "3DAlign"

    const-string v3, "FINISH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mImageAlignmentVector:Ljava/util/Vector;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_nIAProgressCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4000(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v3

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->ImageAlignment(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mIAProgressCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4008(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "3DAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing mBackGroundThreadState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadState:I
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu$5;->this$0:Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->mBackGroundThreadRunning:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;->access$4102(Lcom/sec/android/app/camera/glwidget/TwGL3DTourMenu;Z)Z

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
