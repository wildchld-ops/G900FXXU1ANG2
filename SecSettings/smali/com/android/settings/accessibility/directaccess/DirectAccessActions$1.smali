.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;
.super Landroid/database/ContentObserver;
.source "DirectAccessActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onNegativeModeChanged()V

    return-void
.end method
