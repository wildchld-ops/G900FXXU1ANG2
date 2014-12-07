.class abstract Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;
.super Ljava/lang/Object;
.source "Nfc.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Nfc$NfcHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseNfcHandler"
.end annotation


# instance fields
.field protected final mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

.field protected final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;Lcom/google/android/finsky/utils/Nfc$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;-><init>(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)V

    return-void
.end method


# virtual methods
.method protected final createMessage()Landroid/nfc/NdefMessage;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/utils/Nfc$BaseNfcHandler;->mFragment:Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    array-length v6, v3

    invoke-static {v3, v8, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Landroid/nfc/NdefRecord;

    new-array v6, v9, [B

    const/16 v7, 0x55

    aput-byte v7, v6, v8

    new-array v7, v8, [B

    invoke-direct {v4, v9, v6, v7, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v6, Landroid/nfc/NdefMessage;

    new-array v7, v9, [Landroid/nfc/NdefRecord;

    aput-object v4, v7, v8

    invoke-direct {v6, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    :goto_1
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1
.end method
