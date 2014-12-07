.class Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;
.super Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;
.source "Nfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadMr1NfcHandler"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
    .param p2    # Lcom/google/android/finsky/utils/Nfc$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V

    return-void
.end method

.method private setPushMessage()V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->createMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->setPushMessage()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->mEnabled:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/Nfc$GingerbreadMr1NfcHandler;->setPushMessage()V

    return-void
.end method
