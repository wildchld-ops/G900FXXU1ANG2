.class Lcom/android/settings/torchlight/TorchlightSettings$1;
.super Landroid/database/ContentObserver;
.source "TorchlightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/torchlight/TorchlightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/torchlight/TorchlightSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/torchlight/TorchlightSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/torchlight/TorchlightSettings$1;->this$0:Lcom/android/settings/torchlight/TorchlightSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "TorchlightSettings"

    const-string v1, "onChange() Torchlight"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/torchlight/TorchlightSettings$1;->this$0:Lcom/android/settings/torchlight/TorchlightSettings;

    invoke-virtual {v0}, Lcom/android/settings/torchlight/TorchlightSettings;->onUpdateChange()V

    return-void
.end method
