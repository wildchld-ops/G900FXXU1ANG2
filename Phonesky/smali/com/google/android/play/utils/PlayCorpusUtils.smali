.class public Lcom/google/android/play/utils/PlayCorpusUtils;
.super Ljava/lang/Object;
.source "PlayCorpusUtils.java"


# direct methods
.method public static getPlayActionButtonBackgroundDrawable(Landroid/content/Context;I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_multi:I

    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_apps:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_books:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_magazines:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_movies:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/google/android/play/R$drawable;->play_action_button_music:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getPrimaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/google/android/play/R$color;->multi_primary_text:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :pswitch_1
    sget v0, Lcom/google/android/play/R$color;->apps_primary_text:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/google/android/play/R$color;->books_primary_text:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/google/android/play/R$color;->magazines_primary_text:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/google/android/play/R$color;->movies_primary_text:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/google/android/play/R$color;->music_primary_text:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
