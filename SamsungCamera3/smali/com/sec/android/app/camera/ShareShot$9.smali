.class Lcom/sec/android/app/camera/ShareShot$9;
.super Ljava/util/TimerTask;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ShareShot;->onRespondSharewithNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;

.field final synthetic val$userInfo:Lcom/samsung/dmc/ux/db/UserInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$9;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$9;->val$userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.shareshot"

    const-string v3, "com.samsung.shareshot.ShareWithRequestDialog"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "UserInfo"

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$9;->val$userInfo:Lcom/samsung/dmc/ux/db/UserInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$9;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7d6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
