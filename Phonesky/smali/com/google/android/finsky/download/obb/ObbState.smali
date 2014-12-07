.class public Lcom/google/android/finsky/download/obb/ObbState;
.super Ljava/lang/Object;
.source "ObbState.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DOWNLOAD_PENDING"

    goto :goto_0

    :pswitch_1
    const-string v0, "DOWNLOADING"

    goto :goto_0

    :pswitch_2
    const-string v0, "DOWNLOADED"

    goto :goto_0

    :pswitch_3
    const-string v0, "NOT_ON_STORAGE"

    goto :goto_0

    :pswitch_4
    const-string v0, "NOT_APPLICABLE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
