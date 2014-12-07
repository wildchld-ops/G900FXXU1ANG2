.class public Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;
.super Landroid/app/Activity;
.source "MyEmergencyInfoDetailActivity.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFromEmergencyDialer:Z

.field private mMyEmergencyInfoDetailFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private registerScreenOffReceiver()V
    .locals 2

    new-instance v1, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity$1;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;)V

    iput-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterScreenOffReceiver()V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mFromEmergencyDialer:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080258

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mMyEmergencyInfoDetailFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromEmergencyDialer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mFromEmergencyDialer:Z

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mMyEmergencyInfoDetailFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    iget-boolean v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mFromEmergencyDialer:Z

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->setFromEmergencyDialer(Z)V

    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mFromEmergencyDialer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->registerScreenOffReceiver()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->setupActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->unregisterScreenOffReceiver()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mMyEmergencyInfoDetailFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->getProfileRawContactId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mMyEmergencyInfoDetailFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailFragment;->getProfileDispalyName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "profileRawContactId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "profileDisplayName"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080349 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    const/4 v1, 0x1

    const v0, 0x7f080349

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;->mFromEmergencyDialer:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupActionBar()V
    .locals 3

    const/16 v2, 0x1e

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0e049f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
