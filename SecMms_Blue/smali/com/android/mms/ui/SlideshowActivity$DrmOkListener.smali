.class Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmOkListener"
.end annotation


# instance fields
.field mDrmFileNames:[Ljava/lang/String;

.field mDrmFilePaths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmOkListener : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "DrmOkListener : StartActivity DrmContentsActivity.class"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const-class v2, Lcom/android/mms/ui/DrmContentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "drmFilePath"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFilePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "drmFileName"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->mDrmFileNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
