.class Lcom/android/settings/guide/WifiSettingsGuider$5;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$5;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z
    invoke-static {v0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->access$202(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z

    return-void
.end method
