.class Lcom/android/settings/TetherSettings$16;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TetherSettings$16;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v5}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "TetherSettings"

    const-string v5, "dispatchKeyEvent item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v4, v0, Lcom/android/settings/SettingsSwitchPreference;

    if-eqz v4, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/SettingsSwitchPreference;->performClick()V

    move v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
