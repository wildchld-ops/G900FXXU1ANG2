.class Lcom/sec/android/app/camera/DummyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DummyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DummyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/DummyActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/DummyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/DummyActivity$1;->this$0:Lcom/sec/android/app/camera/DummyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "coverOpen"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/DummyActivity$1;->this$0:Lcom/sec/android/app/camera/DummyActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
